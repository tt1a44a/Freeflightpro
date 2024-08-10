.class Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$6$2;
.super Ljava/lang/Object;
.source "PreviewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$6;->onError(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$6;

.field final synthetic val$code:I


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$6;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$6;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$6$2;->this$1:Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$6;

    iput p2, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$6$2;->val$code:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 228
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$6$2;->this$1:Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$6;

    iget-object v0, v0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$6;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;

    invoke-static {v0}, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->access$000(Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposer;->getInstance()Lcom/muvee/mvdronecomposer/MVDroneComposer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/muvee/mvdronecomposer/MVDroneComposer;->getTargetDurationMs()J

    move-result-wide v2

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 229
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$6$2;->this$1:Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$6;

    iget-object v0, v0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$6;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;

    invoke-static {v0}, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->access$800(Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;)Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$OnDataProcessingListener;

    move-result-object v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$6$2;->val$code:I

    invoke-interface {v0, v1, v2}, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$OnDataProcessingListener;->onComplete(ZI)V

    .line 230
    return-void
.end method
