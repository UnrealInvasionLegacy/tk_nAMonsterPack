class CoreLordProjFX extends Emitter;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter11
         UseColorScale=True
         UniformSize=True
         AutomaticInitialSpawning=False
         ColorScale(0)=(Color=(B=255,G=128))
         ColorScale(1)=(RelativeTime=1.000000,Color=(B=255,G=128))
         CoordinateSystem=PTCS_Relative
         MaxParticles=1
         StartSizeRange=(X=(Min=35.000000,Max=35.000000))
         InitialParticlesPerSecond=5000.000000
         Texture=Texture'EpicParticles.Flares.FlashFlare1'
         LifetimeRange=(Min=0.100000,Max=0.100000)
     End Object
     Emitters(0)=SpriteEmitter'tk_nAMonsterPack.CoreLordProjFX.SpriteEmitter11'

     Begin Object Class=SpriteEmitter Name=SpriteEmitter12
         UseColorScale=True
         SpinParticles=True
         UseSizeScale=True
         UseRegularSizeScale=False
         UniformSize=True
         AutomaticInitialSpawning=False
         ColorScale(0)=(Color=(B=255,G=128))
         ColorScale(1)=(RelativeTime=0.500000,Color=(B=255,G=128))
         ColorScale(2)=(RelativeTime=0.750000,Color=(G=255))
         ColorScale(3)=(RelativeTime=1.000000,Color=(B=255,G=128))
         CoordinateSystem=PTCS_Relative
         MaxParticles=1
         SpinCCWorCW=(X=1.000000)
         SpinsPerSecondRange=(X=(Min=1.000000,Max=1.000000))
         SizeScale(0)=(RelativeSize=0.500000)
         SizeScale(1)=(RelativeTime=0.500000,RelativeSize=0.500000)
         SizeScale(2)=(RelativeTime=0.750000,RelativeSize=1.000000)
         SizeScale(3)=(RelativeTime=1.000000,RelativeSize=0.500000)
         InitialParticlesPerSecond=5000.000000
         Texture=Texture'EpicParticles.Flares.Sharpstreaks2'
         LifetimeRange=(Min=1.000000,Max=1.000000)
     End Object
     Emitters(1)=SpriteEmitter'tk_nAMonsterPack.CoreLordProjFX.SpriteEmitter12'

     Begin Object Class=SpriteEmitter Name=SpriteEmitter13
         UseColorScale=True
         SpinParticles=True
         UniformSize=True
         BlendBetweenSubdivisions=True
         ColorScale(0)=(Color=(B=255,G=255))
         ColorScale(1)=(RelativeTime=1.000000,Color=(B=255,G=255))
         CoordinateSystem=PTCS_Relative
         MaxParticles=3
         SpinsPerSecondRange=(X=(Min=-1.000000,Max=1.000000))
         StartSpinRange=(X=(Max=1.000000))
         StartSizeRange=(X=(Min=8.000000,Max=15.000000))
         Texture=Texture'AW-2004Particles.Energy.ElecPanels'
         TextureUSubdivisions=2
         TextureVSubdivisions=2
         LifetimeRange=(Min=0.500000,Max=0.500000)
     End Object
     Emitters(2)=SpriteEmitter'tk_nAMonsterPack.CoreLordProjFX.SpriteEmitter13'

     Begin Object Class=MeshEmitter Name=MeshEmitter4
         StaticMesh=StaticMesh'AW-2004Particles.Shapes.SparkLoop'
         UseParticleColor=True
         UseColorScale=True
         FadeOut=True
         FadeIn=True
         SpinParticles=True
         AutomaticInitialSpawning=False
         ColorScale(0)=(Color=(B=255,G=255))
         ColorScale(1)=(RelativeTime=1.000000,Color=(B=255,G=255))
         FadeOutStartTime=0.750000
         FadeInEndTime=0.250000
         CoordinateSystem=PTCS_Relative
         MaxParticles=1
         SpinCCWorCW=(Y=1.000000)
         SpinsPerSecondRange=(Y=(Min=0.500000,Max=0.500000))
         StartSizeRange=(X=(Min=0.500000,Max=0.500000),Y=(Min=0.500000,Max=0.500000),Z=(Min=0.500000,Max=0.500000))
         InitialParticlesPerSecond=5000.000000
         LifetimeRange=(Min=1.000000,Max=1.000000)
     End Object
     Emitters(3)=MeshEmitter'tk_nAMonsterPack.CoreLordProjFX.MeshEmitter4'

     Begin Object Class=MeshEmitter Name=MeshEmitter5
         StaticMesh=StaticMesh'AW-2004Particles.Shapes.SparkLoop'
         UseParticleColor=True
         UseColorScale=True
         FadeOut=True
         FadeIn=True
         SpinParticles=True
         AutomaticInitialSpawning=False
         ColorScale(0)=(Color=(G=255))
         ColorScale(1)=(RelativeTime=1.000000,Color=(G=255))
         FadeOutStartTime=0.750000
         FadeInEndTime=0.250000
         CoordinateSystem=PTCS_Relative
         MaxParticles=1
         SpinCCWorCW=(Z=1.000000)
         SpinsPerSecondRange=(Z=(Min=0.500000,Max=0.500000))
         StartSizeRange=(X=(Min=0.500000,Max=0.500000),Y=(Min=0.500000,Max=0.500000),Z=(Min=0.500000,Max=0.500000))
         InitialParticlesPerSecond=5000.000000
         LifetimeRange=(Min=1.000000,Max=1.000000)
     End Object
     Emitters(4)=MeshEmitter'tk_nAMonsterPack.CoreLordProjFX.MeshEmitter5'

     bNoDelete=False
     Physics=PHYS_Trailer
}
