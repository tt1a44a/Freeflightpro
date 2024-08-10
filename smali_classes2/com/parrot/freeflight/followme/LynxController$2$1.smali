.class Lcom/parrot/freeflight/followme/LynxController$2$1;
.super Ljava/lang/Object;
.source "LynxController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/followme/LynxController$2;->onProcessFrameResultUpdate(Lcom/parrot/arsdk/lynx/LynxManager$LynxResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parrot/freeflight/followme/LynxController$2;

.field final synthetic val$result:Lcom/parrot/arsdk/lynx/LynxManager$LynxResult;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/followme/LynxController$2;Lcom/parrot/arsdk/lynx/LynxManager$LynxResult;)V
    .locals 0
    .param p1, "this$1"    # Lcom/parrot/freeflight/followme/LynxController$2;

    .prologue
    .line 438
    iput-object p1, p0, Lcom/parrot/freeflight/followme/LynxController$2$1;->this$1:Lcom/parrot/freeflight/followme/LynxController$2;

    iput-object p2, p0, Lcom/parrot/freeflight/followme/LynxController$2$1;->val$result:Lcom/parrot/arsdk/lynx/LynxManager$LynxResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 441
    iget-object v0, p0, Lcom/parrot/freeflight/followme/LynxController$2$1;->this$1:Lcom/parrot/freeflight/followme/LynxController$2;

    iget-object v0, v0, Lcom/parrot/freeflight/followme/LynxController$2;->this$0:Lcom/parrot/freeflight/followme/LynxController;

    invoke-static {v0}, Lcom/parrot/freeflight/followme/LynxController;->access$000(Lcom/parrot/freeflight/followme/LynxController;)Lcom/parrot/freeflight/followme/LynxController$OnLynxResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/parrot/freeflight/followme/LynxController$2$1;->this$1:Lcom/parrot/freeflight/followme/LynxController$2;

    iget-object v0, v0, Lcom/parrot/freeflight/followme/LynxController$2;->this$0:Lcom/parrot/freeflight/followme/LynxController;

    invoke-static {v0}, Lcom/parrot/freeflight/followme/LynxController;->access$000(Lcom/parrot/freeflight/followme/LynxController;)Lcom/parrot/freeflight/followme/LynxController$OnLynxResultListener;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/followme/LynxController$2$1;->val$result:Lcom/parrot/arsdk/lynx/LynxManager$LynxResult;

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/followme/LynxController$OnLynxResultListener;->onLynxResultUpdate(Lcom/parrot/arsdk/lynx/LynxManager$LynxResult;)V

    .line 444
    :cond_0
    return-void
.end method
