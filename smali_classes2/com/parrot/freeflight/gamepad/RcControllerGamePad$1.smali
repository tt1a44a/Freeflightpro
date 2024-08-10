.class Lcom/parrot/freeflight/gamepad/RcControllerGamePad$1;
.super Ljava/lang/Object;
.source "RcControllerGamePad.java"

# interfaces
.implements Lcom/parrot/freeflight/core/model/Model$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/gamepad/RcControllerGamePad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/gamepad/RcControllerGamePad;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/gamepad/RcControllerGamePad;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/gamepad/RcControllerGamePad;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/RcControllerGamePad$1;->this$0:Lcom/parrot/freeflight/gamepad/RcControllerGamePad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/RcControllerGamePad$1;->this$0:Lcom/parrot/freeflight/gamepad/RcControllerGamePad;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/RcControllerGamePad;->access$000(Lcom/parrot/freeflight/gamepad/RcControllerGamePad;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/RcControllerGamePad$1;->this$0:Lcom/parrot/freeflight/gamepad/RcControllerGamePad;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/RcControllerGamePad;->notifyStateChange()V

    .line 29
    :cond_0
    return-void
.end method
