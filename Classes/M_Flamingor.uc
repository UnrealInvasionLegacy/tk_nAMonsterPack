class M_Flamingor extends tk_Brute;

var float FiredTime;
var bool bGettingMove;
var() class<Projectile> RangedProjectile;
var int FireErrorAmount;

function RangedAttack(Actor A)
{
	if ( bShotAnim || (VSize(A.Location-Location)>1500 && FiredTime>Level.TimeSeconds && !bGettingMove) )
		return;
	if( !bGettingMove )
	{
		SetAnimAction('StillFire');
		bGettingMove = True;
	}
	else
	{
		PlaySound(sound'pwhip1br',SLOT_Talk);
		SetAnimAction(MeleeAttack[0]);
		bGettingMove = False;
		FiredTime = Level.TimeSeconds+2;
	}
	Controller.bPreparingMove = true;
	Acceleration = vect(0,0,0);
	bShotAnim = true;
}
function GutShotTarget()
{
	PlaySound(FireSound,SLOT_Interact);
	FireProj(vect(1.05,0,0.4));
}
function SpawnLeftShot()
{
	PlaySound(FireSound,SLOT_Interact);
	FireProj(vect(1,0.7,0.4));
}

function SpawnRightShot()
{
	PlaySound(FireSound,SLOT_Interact);
	FireProj(vect(1,-0.7,0.4));
}
function WhipDamageTarget()
{
	local Projectile P,P2;
	local int i;

	P = FireProj(vect(1.05,0,0.4));
	if( P!=None )
	{
		For( i=Rand(3); i<4; i++ )
		{
			P2 = Spawn(P.Class,,,P.Location,P.Rotation);
			P2.Velocity = P.Velocity+VRand()*200;
			P2.Velocity.Z += 400*FRand()-400;
		}
	}
}

function projectile FireProj( vector StartOffset )
{
	local vector X,Y,Z, projStart;
	local Projectile P;

	if( RangedProjectile==None || Level.NetMode==NM_Client ) Return None;
	MakeNoise(1.0);
	GetAxes(Rotation,X,Y,Z);
	projStart = Location + StartOffset.X * CollisionRadius * X + StartOffset.Y * CollisionRadius * Y + StartOffset.Z * CollisionRadius * Z;
	if ( !SavedFireProperties.bInitialized )
	{
		SavedFireProperties.AmmoClass = Class'SkaarjAmmo'; // Dosent really matter (just to avoid warnings or errors)!
		SavedFireProperties.ProjectileClass = RangedProjectile;
		// SavedFireProperties.WarnTargetPct = RangedWarningness;
		if( RangedProjectile.Default.LifeSpan==0 )
			SavedFireProperties.MaxRange = 10000;
		else SavedFireProperties.MaxRange = RangedProjectile.Default.LifeSpan*RangedProjectile.Default.Speed;
		SavedFireProperties.bTossed = (RangedProjectile.Default.Physics==PHYS_Falling);
		SavedFireProperties.bTrySplash = False;
		// SavedFireProperties.bLeadTarget = (!bDirectAim);
		SavedFireProperties.bInstantHit = False;
		SavedFireProperties.bInitialized = true;
	}
	P = Spawn(RangedProjectile,,,projStart,Controller.AdjustAim(SavedFireProperties,projStart,FireErrorAmount));
	// if( P!=None && MyScalingDifference!=1 )
	// {
	// 	P.SetDrawScale(P.Default.DrawScale*MyScalingDifference);
	// 	P.Damage*=MyScalingDifference;
	// 	P.DamageRadius*=MyScalingDifference;
	// 	P.SetCollisionSize(MyScalingDifference*P.Default.CollisionRadius,MyScalingDifference*P.Default.CollisionHeight);
	// }
	Return P;
}

defaultproperties
{
     Health=1500
     RangedProjectile=Class'tk_nAMonsterPack.FlamingorProj'
     ScoringValue=13
     DrawScale=2.000000
     Skins(0)=Shader'tk_nAMonsterPack.RainbowThing.Rain_sha'
     CollisionRadius=94.000000
     CollisionHeight=104.000000
     Mass=5000.000000
     Buoyancy=4000.000000
	 FireErrorAmount=500
}
