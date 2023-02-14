class FlamingorProj extends tk_TitanBigRock;

simulated function PostBeginPlay()
{
	local float decision;

	Super(Projectile).PostBeginPlay();
	if( Level.NetMode!=NM_Client )
		Velocity = Vector(Rotation) * (0.8 + (0.3 * FRand())) * speed;
	DesiredRotation.Pitch = Rotation.Pitch + Rand(2000) - 1000;
	DesiredRotation.Roll = Rotation.Roll + Rand(2000) - 1000;
	DesiredRotation.Yaw = Rotation.Yaw + Rand(2000) - 1000; 
	decision = FRand();
	if (FRand() < 0.5)
		RotationRate.Pitch = Rand(180000);
	if ( (RotationRate.Pitch == 0) || (FRand() < 0.8) )
		RotationRate.Roll = Max(0, 50000 + Rand(200000) - RotationRate.Pitch);
}
simulated function SpawnChunks(int num);
simulated function InitFrag(tk_TitanBigRock myParent, float scale);
auto state Flying
{
	simulated function HitWall (vector HitNormal, actor Wall)
	{
		local vector RealHitNormal;

		if ( (Role == ROLE_Authority) && (Mover(Wall) != None) && Mover(Wall).bDamageTriggered )
			Wall.TakeDamage( Damage, instigator, Location, MomentumTransfer * Normal(Velocity), class'Crushed');
		speed = VSize(velocity);
		MakeSound();
		if ( (HitNormal.Z > 0.8) && (speed < 60 - (DrawScale*7.5)) )
		{
			SetPhysics(PHYS_None);
			GotoState('Sitting');	
		}
		else
		{
			SetPhysics(PHYS_Falling);
			RealHitNormal = HitNormal;
			if ( FRand() < 0.5 )
				RotationRate.Pitch = Max(RotationRate.Pitch, 100000);
			else
				RotationRate.Roll = Max(RotationRate.Roll, 100000);
			HitNormal = Normal(HitNormal + 0.5 * VRand()); 
			if ( (RealHitNormal Dot HitNormal) < 0 )
				HitNormal.Z *= -0.7;
			Velocity = 0.7 * (Velocity - 2 * HitNormal * (Velocity Dot HitNormal));
			DesiredRotation = rotator(HitNormal);
			if ( (speed > 150) && (DrawScale>0.3) )
				SpawnChunks(8+Rand(10));
		}
	}
}

defaultproperties
{
     Speed=1400.000000
     Damage=70.000000
     DrawType=DT_StaticMesh
     StaticMesh=StaticMesh'tk_nAMonsterPack.nAMonsterPack.Flamingo'
     DrawScale=2.000000
     CollisionRadius=20.000000
     CollisionHeight=20.000000
}
