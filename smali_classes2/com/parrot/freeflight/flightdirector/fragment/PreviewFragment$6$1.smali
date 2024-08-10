.class Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$6$1;
.super Ljava/lang/Object;
.source "PreviewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$6;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$6;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$6;)V
    .locals 0
    .param p1, "this$1"    # Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$6;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$6$1;->this$1:Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$6$1;->this$1:Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$6;

    iget-object v0, v0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$6;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;

    invoke-static {v0}, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->access$800(Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;)Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$OnDataProcessingListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$OnDataProcessingListener;->onStart()V

    .line 215
    return-void
.end method
