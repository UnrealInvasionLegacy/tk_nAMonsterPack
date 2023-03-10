class HeavyBruteProjFX extends Emitter;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter6
         UseDirectionAs=PTDU_Scale
         UseColorScale=True
         SpinParticles=True
         UniformSize=True
         ColorScale(0)=(Color=(B=100,G=255,R=100))
         ColorScale(1)=(RelativeTime=0.800000,Color=(B=100,G=250,R=100))
         ColorScale(2)=(RelativeTime=1.000000,Color=(B=100,G=255,R=100))
         CoordinateSystem=PTCS_Relative
         MaxParticles=2
         StartSpinRange=(X=(Max=1.000000))
         StartSizeRange=(X=(Min=35.000000,Max=50.000000))
         InitialParticlesPerSecond=8000.000000
         Texture=Texture'AW-2004Particles.Weapons.PlasmaStar'
         LifetimeRange=(Min=0.200000,Max=0.200000)
         WarmupTicksPerSecond=2.000000
         RelativeWarmupTime=2.000000
     End Object
     Emitters(0)=SpriteEmitter'tk_nAMonsterPack.HeavyBruteProjFX.SpriteEmitter6'

     Begin Object Class=SpriteEmitter Name=SpriteEmitter7
         UseDirectionAs=PTDU_Right
         AutomaticInitialSpawning=False
         ColorScale(0)=(Color=(B=15,G=9,R=255))
         ColorScale(1)=(RelativeTime=1.000000,Color=(B=7,G=1,R=250))
         CoordinateSystem=PTCS_Relative
         MaxParticles=1
         StartLocationOffset=(X=-50.000000)
         StartSizeRange=(X=(Min=-75.000000,Max=-75.000000),Y=(Min=25.000000,Max=25.000000))
         InitialParticlesPerSecond=500.000000
         Texture=Texture'AW-2004Particles.Weapons.PlasmaHead'
         LifetimeRange=(Min=0.200000,Max=0.200000)
         StartVelocityRange=(X=(Max=10.000000))
         VelocityLossRange=(X=(Min=1.000000,Max=1.000000))
         WarmupTicksPerSecond=2.000000
         RelativeWarmupTime=2.000000
     End Object
     Emitters(1)=SpriteEmitter'tk_nAMonsterPack.HeavyBruteProjFX.SpriteEmitter7'

     Begin Object Class=SpriteEmitter Name=SpriteEmitter8
         UseColorScale=True
         SpinParticles=True
         UseSizeScale=True
         UseRegularSizeScale=False
         UniformSize=True
         BlendBetweenSubdivisions=True
         ColorScale(1)=(RelativeTime=0.100000,Color=(G=255))
         ColorScale(2)=(RelativeTime=0.500000,Color=(G=251,R=20))
         ColorScale(3)=(RelativeTime=1.000000)
         CoordinateSystem=PTCS_Relative
         MaxParticles=20
         DetailMode=DM_High
         SpinsPerSecondRange=(X=(Max=0.200000))
         StartSpinRange=(X=(Max=1.000000))
         SizeScale(0)=(RelativeSize=1.000000)
         SizeScale(1)=(RelativeTime=1.000000)
         StartSizeRange=(X=(Min=12.500000,Max=17.500000))
         Texture=Texture'AW-2004Particles.Weapons.SmokePanels1'
         TextureUSubdivisions=4
         TextureVSubdivisions=4
         LifetimeRange=(Min=0.400000,Max=0.400000)
         StartVelocityRange=(X=(Min=-500.000000,Max=-500.000000))
         WarmupTicksPerSecond=1.000000
         RelativeWarmupTime=2.000000
     End Object
     Emitters(2)=SpriteEmitter'tk_nAMonsterPack.HeavyBruteProjFX.SpriteEmitter8'

     Begin Object Class=TrailEmitter Name=TrailEmitter0
         TrailShadeType=PTTST_Linear
         TrailLocation=PTTL_FollowEmitter
         DistanceThreshold=15.000000
         UseCrossedSheets=True
         UseColorScale=True
         ColorScale(0)=(Color=(G=255))
         ColorScale(1)=(RelativeTime=1.000000,Color=(G=255))
         StartSizeRange=(X=(Min=15.000000,Max=15.000000))
         Texture=Texture'TonysMonsterTexV5.fX.ImperiusTrail'
         LifetimeRange=(Min=1.000000,Max=1.000000)
     End Object
     Emitters(3)=TrailEmitter'tk_nAMonsterPack.HeavyBruteProjFX.TrailEmitter0'

     bNoDelete=False
     LifeSpan=8.000000
}
