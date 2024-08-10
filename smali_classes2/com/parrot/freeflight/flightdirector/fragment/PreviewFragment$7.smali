.class Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$7;
.super Ljava/lang/Object;
.source "PreviewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->updateProgress(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;

.field final synthetic val$progressTime:I

.field final synthetic val$time:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;

    .prologue
    .line 304
    iput-object p1, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$7;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;

    iput p2, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$7;->val$progressTime:I

    iput-object p3, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$7;->val$time:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$7;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;

    invoke-static {v0}, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->access$000(Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->isPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$7;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;

    invoke-static {v0}, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->access$000(Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;)Landroid/widget/SeekBar;

    move-result-object v0

    iget v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$7;->val$progressTime:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$7;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;

    invoke-static {v0}, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->access$1100(Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$7;->val$time:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    return-void
.end method
