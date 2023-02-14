class WOGBruteProj extends Projectile;

var	Emitter SmokeTrail;
var float MyDamage;

simulated function Destroyed()
{
	if ( SmokeTrail != None )
		SmokeTrail.Kill();
	Super.Destroyed();
}

simulated function PostBeginPlay()
{
	Super(Projectile).PostBeginPlay();

    if ( Level.NetMode != NM_DedicatedServer )
    {
		SmokeTrail = Spawn(class'WOGBruteProjFX', self,, Location, Rotation);
		SmokeTrail.SetBase(self);
	}

	Velocity = Speed * Vector(Rotation); 
	Damage=MyDamage;
}

simulated function Landed( vector HitNormal )
{
	Explode(Location,HitNormal);
}

simulated function ProcessTouch (Actor Other, Vector HitLocation)
{
	if ( (Other != instigator) && (!Other.IsA('Projectile') || Other.bProjTarget) )
		Explode(HitLocation, vector(rotation)*-1 );
}

function BlowUp(vector HitLocation)
{
	HurtRadius(Damage, DamageRadius, MyDamageType, MomentumTransfer, HitLocation );
	MakeNoise(1.0);
}

simulated function Explode(vector HitLocation, vector HitNormal)
{

	PlaySound(sound'tk_nAMonsterPack.Misc.HeavyExplosion',,2.5*TransientSoundVolume);
    if ( EffectIsRelevant(Location,false) )
    {
    	Spawn(class'ONSPlasmaHitRed',,,HitLocation + HitNormal*20,rotator(HitNormal));
    }

	BlowUp(HitLocation);
	Destroy();
}

defaultproperties
{
     MyDamage=100.000000
     Speed=850.000000
     MaxSpeed=1000.000000
     DamageRadius=150.000000
     MomentumTransfer=70000.000000
     ExplosionDecal=Class'tk_nAMonsterPack.RageKrallProjScorch'
     LightHue=85
     LightBrightness=255.000000
     LightRadius=8.000000
     bDynamicLight=True
     AmbientSound=Sound'WeaponSounds.ShockRifle.ShockRifleProjectile'
     LifeSpan=8.000000
     SoundVolume=255
     SoundRadius=100.000000
     bFixedRotationDir=True
     RotationRate=(Roll=50000)
     DesiredRotation=(Roll=30000)
     ForceRadius=100.000000
     ForceScale=5.000000
}
