.class Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$1;
.super Ljava/lang/Object;
.source "PreviewFragment.java"

# interfaces
.implements Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;


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
    .line 54
    iput-object p1, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$1;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressUpdate(IF)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "progress"    # F

    .prologue
    .line 57
    packed-switch p1, :pswitch_data_0

    .line 74
    :goto_0
    :pswitch_0
    return-void

    .line 65
    :pswitch_1
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$1;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;

    invoke-static {v0}, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->access$000(Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;)Landroid/widget/SeekBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 66
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$1;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;

    invoke-static {v0}, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->access$100(Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;)V

    goto :goto_0

    .line 69
    :pswitch_2
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$1;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;

    invoke-static {v0, p2}, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->access$200(Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;F)V

    goto :goto_0

    .line 57
    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
