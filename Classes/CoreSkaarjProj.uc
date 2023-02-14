class CoreSkaarjProj extends SkaarjProjectile;

var Emitter SparkleTrailz;
var float MyDamage;

simulated function PostBeginPlay()
{
	Super(Projectile).PostBeginPlay();

    if ( Level.NetMode != NM_DedicatedServer )
    {
		SparkleTrailz = Spawn(class'CoreSkaarjProjFX', self);
		SparkleTrailz.SetBase(self);
	}

	Velocity = (Speed+Rand(MaxSpeed-Speed) )* Vector(Rotation);
	Damage=MyDamage;
}
simulated function Destroyed()
{
    if (SparkleTrailz != None)
    {
		SparkleTrailz.Kill();
    }
	Super.Destroyed();
}

simulated function DestroyTrails()
{
    if (SparkleTrailz != None)
        SparkleTrailz.Kill();
}
simulated function ProcessTouch (Actor Other, vector HitLocation)
{
    local Vector X, RefNormal, RefDir;

	if (Other == Instigator) return;
    if (Other == Owner) return;

    if (Other.IsA('xPawn') && xPawn(Other).CheckReflect(HitLocation, RefNormal, Damage*0.25))
    {
        if (Role == ROLE_Authority)
        {
            X = Normal(Velocity);
            RefDir = X - 2.0*RefNormal*(X dot RefNormal);
            RefDir = RefNormal;
            Spawn(class, Other,, HitLocation+RefDir*20, Rotator(RefDir));
        }
		Spawn(class'CoreSkaarjProjEX',,, Location);
        DestroyTrails();
        Destroy();
    }
    else if ( !Other.IsA('Projectile') || Other.bProjTarget )
    {
		Explode(HitLocation, Normal(HitLocation-Other.Location));
    }
}

simulated function Explode(vector HitLocation,vector HitNormal)
{
    if ( Role == ROLE_Authority )
        HurtRadius(Damage, DamageRadius, MyDamageType, MomentumTransfer, HitLocation );

	Spawn(class'CoreSkaarjProjEX',,, Location);
   	PlaySound(ImpactSound, SLOT_Misc);
	Destroy();
}

defaultproperties
{
     MyDamage=150.000000
     Speed=1200.000000
     MyDamageType=Class'tk_nAMonsterPack.DamTypeCoreSkaarj'
     LightHue=21
     LightSaturation=128
     LightBrightness=64.000000
     bHidden=True
}
