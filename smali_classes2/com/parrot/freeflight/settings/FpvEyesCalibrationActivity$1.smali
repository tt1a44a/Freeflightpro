.class Lcom/parrot/freeflight/settings/FpvEyesCalibrationActivity$1;
.super Ljava/lang/Object;
.source "FpvEyesCalibrationActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/settings/FpvEyesCalibrationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/settings/FpvEyesCalibrationActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/settings/FpvEyesCalibrationActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/settings/FpvEyesCalibrationActivity;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationActivity$1;->this$0:Lcom/parrot/freeflight/settings/FpvEyesCalibrationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGamePadChange(Lcom/parrot/freeflight/gamepad/GamePad;)V
    .locals 2
    .param p1, "selectedGamePad"    # Lcom/parrot/freeflight/gamepad/GamePad;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 37
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/parrot/freeflight/gamepad/GamePad;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    iget-object v0, p0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationActivity$1;->this$0:Lcom/parrot/freeflight/settings/FpvEyesCalibrationActivity;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/settings/FpvEyesCalibrationActivity;->access$002(Lcom/parrot/freeflight/settings/FpvEyesCalibrationActivity;Lcom/parrot/freeflight/gamepad/GamePad;)Lcom/parrot/freeflight/gamepad/GamePad;

    .line 39
    iget-object v0, p0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationActivity$1;->this$0:Lcom/parrot/freeflight/settings/FpvEyesCalibrationActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/settings/FpvEyesCalibrationActivity;->access$000(Lcom/parrot/freeflight/settings/FpvEyesCalibrationActivity;)Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/GamePad;->setMode(I)V

    .line 40
    iget-object v0, p0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationActivity$1;->this$0:Lcom/parrot/freeflight/settings/FpvEyesCalibrationActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/settings/FpvEyesCalibrationActivity;->access$100(Lcom/parrot/freeflight/settings/FpvEyesCalibrationActivity;)Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationActivity$1;->this$0:Lcom/parrot/freeflight/settings/FpvEyesCalibrationActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/settings/FpvEyesCalibrationActivity;->access$100(Lcom/parrot/freeflight/settings/FpvEyesCalibrationActivity;)Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;->onGamePadChange(Lcom/parrot/freeflight/gamepad/GamePad;)V

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationActivity$1;->this$0:Lcom/parrot/freeflight/settings/FpvEyesCalibrationActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/parrot/freeflight/settings/FpvEyesCalibrationActivity;->access$002(Lcom/parrot/freeflight/settings/FpvEyesCalibrationActivity;Lcom/parrot/freeflight/gamepad/GamePad;)Lcom/parrot/freeflight/gamepad/GamePad;

    goto :goto_0
.end method
