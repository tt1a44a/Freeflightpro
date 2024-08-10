.class Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$5;
.super Ljava/lang/Object;
.source "PreviewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 151
    iput-object p1, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$5;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$5;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;

    invoke-static {v0}, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->access$600(Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$5;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->showControls()V

    .line 156
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$5;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->hideControlsDelayed()V

    .line 158
    :cond_0
    return-void
.end method
