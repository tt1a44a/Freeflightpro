.class Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$2;
.super Ljava/lang/Object;
.source "PreviewFragment.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$2;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 82
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 87
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 5
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$2;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;

    iget-object v0, v0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->mFlightDirectorManager:Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;->pausePreview()V

    .line 92
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$2;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;

    iget-object v0, v0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->mFlightDirectorManager:Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    int-to-long v2, v1

    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$2;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;

    invoke-static {v1}, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->access$300(Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;)Lcom/muvee/studio/view/MmsaGLSurfaceView;

    move-result-object v1

    iget-object v4, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$2;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;

    invoke-static {v4}, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->access$400(Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;)Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;->resumePreview(JLcom/muvee/studio/view/MmsaGLSurfaceView;Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;)V

    .line 93
    return-void
.end method
