.class Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad$2;
.super Ljava/lang/Object;
.source "SkyControllerGrabableGamePad.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$AppEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad$2;->this$0:Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppEvent(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_BUTTON_ACTION_ENUM;)Z
    .locals 5
    .param p1, "appEvent"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_BUTTON_ACTION_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 81
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad$2;->this$0:Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;

    invoke-virtual {v2, p1}, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->getKeyCodeFromAppEvent(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_BUTTON_ACTION_ENUM;)I

    move-result v0

    .line 82
    .local v0, "keyCode":I
    const/4 v1, 0x0

    .line 83
    .local v1, "notified":Z
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 84
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad$2;->this$0:Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;

    new-instance v3, Landroid/view/KeyEvent;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->notifyKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 85
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad$2;->this$0:Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;

    new-instance v3, Landroid/view/KeyEvent;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v0}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->notifyKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    and-int/2addr v1, v2

    .line 87
    :cond_0
    return v1
.end method
