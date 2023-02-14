class M_CoreLord extends tk_Warlord;

function FireProjectile()
{	
	local vector FireStart,X,Y,Z;
	local rotator ProjRot;
	local CoreLordProj S;

	if ( Controller != None )
	{
		GetAxes(Rotation,X,Y,Z);
		FireStart = GetFireStart(X,Y,Z);
		if ( !SavedFireProperties.bInitialized )
		{
			SavedFireProperties.AmmoClass = MyAmmo.Class;
			SavedFireProperties.ProjectileClass = MyAmmo.ProjectileClass;
			SavedFireProperties.WarnTargetPct = MyAmmo.WarnTargetPct;
			SavedFireProperties.MaxRange = MyAmmo.MaxRange;
			SavedFireProperties.bTossed = MyAmmo.bTossed;
			SavedFireProperties.bTrySplash = MyAmmo.bTrySplash;
			SavedFireProperties.bLeadTarget = MyAmmo.bLeadTarget;
			SavedFireProperties.bInstantHit = MyAmmo.bInstantHit;
			SavedFireProperties.bInitialized = true;
		}
		ProjRot = Controller.AdjustAim(SavedFireProperties,FireStart,600);
		if ( bRocketDir )
			ProjRot.Yaw += 3072; 
		else
			ProjRot.Yaw -= 3072; 
		bRocketDir = !bRocketDir;
		S = Spawn(class'CoreLordProj',,,FireStart,ProjRot);
		if(S!=None)
			S.Seeking = Controller.Enemy;
		PlaySound(FireSound,SLOT_Interact);
	}
}

defaultproperties
{
     AmmunitionClass=Class'tk_nAMonsterPack.CoreLordAmmo'
     Skins(0)=Texture'tk_nAMonsterPack.Skins.CoreLord'
     Skins(1)=Texture'tk_nAMonsterPack.Skins.CoreLord'
}
