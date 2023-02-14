class CoreLordProj extends Projectile;

var Emitter FX;
var rotator Dir;
var Actor Seeking;
var class<Emitter> FXClass;
var vector InitialDir;

replication
{
	reliable if(Role==Role_Authority)
		Seeking;
}

simulated function PostBeginPlay()
{
	Super.PostBeginPlay();
	if(Role==Role_Authority)
	{
		FX=Spawn(FXClass,self,,Location);
	}
	Dir=Rotation;
	Velocity = (Speed+Rand(MaxSpeed-Speed) )* Vector(Rotation);
	SetTimer(0.1, true);
}

simulated function Timer()
{
    local vector ForceDir;
    local float VelMag;

    if ( InitialDir == vect(0,0,0) )
        InitialDir = Normal(Velocity);
         
	Acceleration = vect(0,0,0);
    Super.Timer();
    if ( (Seeking != None) && (Seeking != Instigator) ) 
    {
		// Do normal guidance to target.
		ForceDir = Normal(Seeking.Location - Location);
		
		if( (ForceDir Dot InitialDir) > 0 )
		{
			VelMag = VSize(Velocity);
		
			// track vehicles better
			if ( Seeking.Physics == PHYS_Karma )
				ForceDir = Normal(ForceDir * 0.8 * VelMag + Velocity);
			else
				ForceDir = Normal(ForceDir * 0.5 * VelMag + Velocity);
			Velocity =  VelMag * ForceDir;  
			Acceleration += 5 * ForceDir; 
		}
		// Update rocket so it faces in the direction its going.
		SetRotation(rotator(Velocity));
    }
}

simulated function Destroyed()
{
	Super.Destroyed();
	if(FX!=None)
		FX.Kill();
}

simulated function Explode(vector HitLocation, vector HitNormal)
{
	BlowUp(HitLocation);
	if(Role==Role_Authority)
		Spawn(class'CoreLordProjEX',self,,HitLocation);
	Destroy();
}

defaultproperties
{
     FXClass=Class'tk_nAMonsterPack.CoreLordProjFX'
     Speed=1000.000000
     MaxSpeed=1000.000000
     Damage=50.000000
     DamageRadius=100.000000
     MyDamageType=Class'tk_nAMonsterPack.DamTypeCoreLord'
}
