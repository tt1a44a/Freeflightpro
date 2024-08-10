.class Lcom/parrot/freeflight/followme/LynxController$1;
.super Ljava/lang/Object;
.source "LynxController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/followme/LynxController;->restart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/followme/LynxController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/followme/LynxController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/followme/LynxController;

    .prologue
    .line 353
    iput-object p1, p0, Lcom/parrot/freeflight/followme/LynxController$1;->this$0:Lcom/parrot/freeflight/followme/LynxController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 356
    iget-object v0, p0, Lcom/parrot/freeflight/followme/LynxController$1;->this$0:Lcom/parrot/freeflight/followme/LynxController;

    invoke-static {v0}, Lcom/parrot/freeflight/followme/LynxController;->access$000(Lcom/parrot/freeflight/followme/LynxController;)Lcom/parrot/freeflight/followme/LynxController$OnLynxResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/parrot/freeflight/followme/LynxController$1;->this$0:Lcom/parrot/freeflight/followme/LynxController;

    invoke-static {v0}, Lcom/parrot/freeflight/followme/LynxController;->access$000(Lcom/parrot/freeflight/followme/LynxController;)Lcom/parrot/freeflight/followme/LynxController$OnLynxResultListener;

    move-result-object v0

    new-instance v1, Lcom/parrot/arsdk/lynx/LynxManager$LynxResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/parrot/arsdk/lynx/LynxManager$LynxResult;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/followme/LynxController$OnLynxResultListener;->onLynxResultUpdate(Lcom/parrot/arsdk/lynx/LynxManager$LynxResult;)V

    .line 359
    :cond_0
    return-void
.end method
