.class Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$2;
.super Ljava/lang/Object;
.source "SkyControllerNGGamePad.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$2;->this$0:Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onJoystickEvent(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;II)Z
    .locals 11
    .param p1, "leftJoystickState"    # Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "rightJoystickState"    # Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "topLeftJoystickState"    # Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "topRightJoystickState"    # Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "min"    # I
    .param p6, "max"    # I

    .prologue
    .line 58
    const-string v0, "FF4.GamePad"

    const-string v1, "onJoystickEvent [%s, %s, %s, %s] in range [%d, %d])"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    aput-object p4, v2, v3

    const/4 v3, 0x4

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$2;->this$0:Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad;

    iget v0, v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad;->mFilterType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 63
    const/4 v9, 0x0

    .line 76
    :cond_0
    :goto_0
    return v9

    .line 66
    :cond_1
    const/4 v9, 0x0

    .line 67
    .local v9, "updated":Z
    invoke-virtual {p1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;->isUpdated()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;->isUpdated()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p3}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;->isUpdated()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p4}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;->isUpdated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    :cond_2
    invoke-virtual {p1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;->consumed()V

    .line 69
    invoke-virtual {p2}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;->consumed()V

    .line 70
    invoke-virtual {p3}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;->consumed()V

    .line 71
    invoke-virtual {p4}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;->consumed()V

    .line 72
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad$2;->this$0:Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad;

    invoke-virtual {p1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;->getXAxisValue()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    invoke-virtual {p1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;->getYAxisValue()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    .line 73
    invoke-virtual {p2}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;->getXAxisValue()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    invoke-virtual {p2}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;->getYAxisValue()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    invoke-virtual {p3}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;->getXAxisValue()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v5, v6

    .line 74
    invoke-virtual {p3}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;->getYAxisValue()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x42c80000    # 100.0f

    div-float/2addr v6, v7

    invoke-virtual {p4}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;->getXAxisValue()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x42c80000    # 100.0f

    div-float/2addr v7, v8

    invoke-virtual {p4}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;->getYAxisValue()I

    move-result v8

    int-to-float v8, v8

    const/high16 v10, 0x42c80000    # 100.0f

    div-float/2addr v8, v10

    .line 72
    invoke-virtual/range {v0 .. v8}, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad;->notifyJoystickEvent(FFFFFFFF)Z

    move-result v9

    goto :goto_0
.end method
