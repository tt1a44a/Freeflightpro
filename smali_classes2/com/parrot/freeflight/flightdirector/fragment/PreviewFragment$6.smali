.class Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$6;
.super Ljava/lang/Object;
.source "PreviewFragment.java"

# interfaces
.implements Lcom/muvee/mvdronecomposer/MVFlightAnalyserCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->startAnalysis()V
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
    .line 205
    iput-object p1, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$6;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(II)V
    .locals 6
    .param p1, "status"    # I
    .param p2, "code"    # I

    .prologue
    .line 240
    invoke-static {}, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->access$700()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Flight Analysis completed (status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$6;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 242
    .local v0, "activity":Landroid/app/Activity;
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$6;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;

    invoke-static {v1}, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->access$800(Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;)Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$OnDataProcessingListener;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 243
    new-instance v1, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$6$3;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$6$3;-><init>(Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$6;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 251
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$6;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;

    invoke-static {v1}, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->access$900(Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 252
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$6;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;

    invoke-static {v1}, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->access$1000(Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;)Landroid/widget/ImageButton;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 253
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$6;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;

    iget-object v1, v1, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->mFlightDirectorManager:Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;

    const-wide/16 v2, 0x3e8

    iget-object v4, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$6;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;

    invoke-static {v4}, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->access$300(Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;)Lcom/muvee/studio/view/MmsaGLSurfaceView;

    move-result-object v4

    iget-object v5, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$6;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;

    invoke-static {v5}, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->access$400(Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;)Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;->seekTo(JLcom/muvee/studio/view/MmsaGLSurfaceView;Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;)V

    .line 254
    return-void
.end method

.method public onError(I)V
    .locals 6
    .param p1, "code"    # I

    .prologue
    .line 222
    invoke-static {}, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->access$700()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Flight Analysis on Error (code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$6;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 224
    .local v0, "activity":Landroid/app/Activity;
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$6;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;

    invoke-static {v1}, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->access$800(Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;)Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$OnDataProcessingListener;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 225
    new-instance v1, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$6$2;

    invoke-direct {v1, p0, p1}, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$6$2;-><init>(Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$6;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 233
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$6;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;

    invoke-static {v1}, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->access$900(Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 234
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$6;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;

    invoke-static {v1}, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->access$1000(Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;)Landroid/widget/ImageButton;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 235
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$6;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;

    iget-object v1, v1, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->mFlightDirectorManager:Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;

    const-wide/16 v2, 0x3e8

    iget-object v4, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$6;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;

    invoke-static {v4}, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->access$300(Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;)Lcom/muvee/studio/view/MmsaGLSurfaceView;

    move-result-object v4

    iget-object v5, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$6;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;

    invoke-static {v5}, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->access$400(Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;)Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;->seekTo(JLcom/muvee/studio/view/MmsaGLSurfaceView;Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;)V

    .line 236
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 208
    invoke-static {}, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->access$700()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Flight Analysis started"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$6;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 210
    .local v0, "activity":Landroid/app/Activity;
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$6;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;

    invoke-static {v1}, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->access$800(Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;)Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$OnDataProcessingListener;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 211
    new-instance v1, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$6$1;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$6$1;-><init>(Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$6;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 218
    :cond_0
    return-void
.end method
