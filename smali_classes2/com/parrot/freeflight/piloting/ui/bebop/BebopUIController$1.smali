.class Lcom/parrot/freeflight/piloting/ui/bebop/BebopUIController$1;
.super Ljava/lang/Object;
.source "BebopUIController.java"

# interfaces
.implements Lcom/parrot/freeflight/followme/LynxController$OnLynxResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/ui/bebop/BebopUIController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopUIController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/bebop/BebopUIController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/bebop/BebopUIController;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopUIController$1;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopUIController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLynxResultUpdate(Lcom/parrot/arsdk/lynx/LynxManager$LynxResult;)V
    .locals 1
    .param p1, "result"    # Lcom/parrot/arsdk/lynx/LynxManager$LynxResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 48
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopUIController$1;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopUIController;->access$000(Lcom/parrot/freeflight/piloting/ui/bebop/BebopUIController;)Lcom/parrot/freeflight/piloting/ui/FollowMeControllerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/parrot/freeflight/piloting/ui/FollowMeControllerInterface;->updateLynxResult(Lcom/parrot/arsdk/lynx/LynxManager$LynxResult;)V

    .line 49
    return-void
.end method
