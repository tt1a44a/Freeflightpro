.class Lcom/parrot/freeflight/gamepad/SkyControllerGamePad$1;
.super Ljava/lang/Object;
.source "SkyControllerGamePad.java"

# interfaces
.implements Lcom/parrot/freeflight/core/model/Model$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad$1;->this$0:Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 2

    .prologue
    .line 185
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad$1;->this$0:Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;

    invoke-static {v1}, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;->access$000(Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;)Z

    move-result v0

    .line 186
    .local v0, "shouldNotifyListener":Z
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad$1;->this$0:Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;

    invoke-static {v1}, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;->access$100(Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 187
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad$1;->this$0:Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;

    invoke-static {v1}, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;->access$200(Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 188
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad$1;->this$0:Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;

    invoke-static {v1}, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;->access$300(Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 189
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad$1;->this$0:Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;

    invoke-static {v1}, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;->access$400(Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 190
    if-eqz v0, :cond_0

    .line 191
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad$1;->this$0:Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;->notifyStateChange()V

    .line 193
    :cond_0
    return-void
.end method
