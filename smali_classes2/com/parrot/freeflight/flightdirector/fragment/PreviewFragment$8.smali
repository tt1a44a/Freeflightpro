.class Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$8;
.super Ljava/lang/Object;
.source "PreviewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->hideControlsDelayed(J)V
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
    .line 331
    iput-object p1, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$8;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$8;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->hideControls()V

    .line 335
    return-void
.end method
