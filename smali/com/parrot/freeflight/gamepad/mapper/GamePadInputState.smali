.class Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;
.super Ljava/lang/Object;
.source "GamePadInputState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Consumable;,
        Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;,
        Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Button;,
        Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$ButtonsState;,
        Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButton;,
        Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButtonsState;,
        Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;,
        Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;,
        Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;,
        Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Consumption;
    }
.end annotation


# static fields
.field static final CONSUME_FOR_1_INPUT:I = 0x1

.field static final CONSUME_FOR_2_INPUTS:I = 0x2

.field private static final NO_ACTION:I = -0x1

.field private static final TAG:Ljava/lang/String; = "GamePadInputState"

.field static final UNCONSUME:I


# instance fields
.field public final buttonsState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$ButtonsState;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final consumedPressableInputs:Ljava/util/Set;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;",
            ">;"
        }
    .end annotation
.end field

.field public final dpad:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButtonsState;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final leftJoystick:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final leftTrigger:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final pressedInputs:Ljava/util/Set;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;",
            ">;"
        }
    .end annotation
.end field

.field public final rightJoystick:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final rightTrigger:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final topLeftJoystick:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final topRightJoystick:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->pressedInputs:Ljava/util/Set;

    .line 59
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->consumedPressableInputs:Ljava/util/Set;

    .line 60
    new-instance v0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;

    const-string v1, "L2"

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->leftTrigger:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;

    .line 61
    new-instance v0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;

    const-string v1, "R2"

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->rightTrigger:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;

    .line 62
    new-instance v0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;

    invoke-direct {v0, v2}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;-><init>(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$1;)V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->leftJoystick:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;

    .line 63
    new-instance v0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;

    invoke-direct {v0, v2}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;-><init>(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$1;)V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->rightJoystick:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;

    .line 64
    new-instance v0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;

    invoke-direct {v0, v2}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;-><init>(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$1;)V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->topLeftJoystick:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;

    .line 65
    new-instance v0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;

    invoke-direct {v0, v2}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;-><init>(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$1;)V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->topRightJoystick:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;

    .line 66
    new-instance v0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButtonsState;

    invoke-direct {v0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButtonsState;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->dpad:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButtonsState;

    .line 67
    new-instance v0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$ButtonsState;

    invoke-direct {v0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$ButtonsState;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->buttonsState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$ButtonsState;

    .line 68
    return-void
.end method

.method private onPressableDown(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;)V
    .locals 2
    .param p1, "input"    # Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;

    .prologue
    const/4 v1, 0x0

    .line 146
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->pressedInputs:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 147
    invoke-interface {p1, v1}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;->setLastAction(I)V

    .line 148
    invoke-interface {p1, v1}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;->setConsumed(I)V

    .line 153
    return-void
.end method

.method private onPressableUp(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;)V
    .locals 2
    .param p1, "input"    # Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    .line 125
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->consumedPressableInputs:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->consumedPressableInputs:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 127
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;->setConsumed(I)V

    .line 128
    invoke-interface {p1, v1}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;->setLastAction(I)V

    .line 141
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->pressedInputs:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->pressedInputs:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 131
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;->setConsumed(I)V

    .line 132
    invoke-interface {p1, v1}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;->setLastAction(I)V

    goto :goto_0

    .line 134
    :cond_1
    const/4 v0, -0x1

    invoke-interface {p1, v0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;->setLastAction(I)V

    goto :goto_0
.end method

.method private onTriggerEvent(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;F)V
    .locals 2
    .param p1, "triggerState"    # Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "triggerValue"    # F

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->resetFlags()V

    .line 90
    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;->setLastAction(I)V

    .line 92
    invoke-virtual {p1}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;->isPressed()Z

    move-result v0

    .line 93
    .local v0, "isTriggerPressed":Z
    invoke-virtual {p1, p2}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;->setValue(F)V

    .line 95
    invoke-virtual {p1}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;->isPressed()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 96
    if-eqz v0, :cond_1

    .line 97
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->onPressableUp(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;)V

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->onPressableDown(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;)V

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->pressedInputs:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 211
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->consumedPressableInputs:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 212
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->leftTrigger:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;->clear()V

    .line 213
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->rightTrigger:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;->clear()V

    .line 214
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->leftJoystick:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;->clear()V

    .line 215
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->rightJoystick:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;->clear()V

    .line 216
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->topLeftJoystick:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;->clear()V

    .line 217
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->topRightJoystick:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;->clear()V

    .line 218
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->buttonsState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$ButtonsState;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$ButtonsState;->access$100(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$ButtonsState;)V

    .line 219
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->dpad:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButtonsState;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButtonsState;->clear()V

    .line 220
    return-void
.end method

.method consumeInput(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;I)V
    .locals 1
    .param p1, "input"    # Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "consume"    # I

    .prologue
    .line 169
    invoke-interface {p1}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;->getConsumed()I

    move-result v0

    if-ge v0, p2, :cond_0

    .line 170
    invoke-interface {p1, p2}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;->setConsumed(I)V

    .line 173
    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->pressedInputs:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->consumedPressableInputs:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 184
    :cond_1
    return-void
.end method

.method public getPressableInput(Lcom/parrot/freeflight/gamepad/GamePad$Input;)Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;
    .locals 2
    .param p1, "input"    # Lcom/parrot/freeflight/gamepad/GamePad$Input;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 232
    if-nez p1, :cond_0

    .line 245
    :goto_0
    return-object v0

    .line 233
    :cond_0
    iget v1, p1, Lcom/parrot/freeflight/gamepad/GamePad$Input;->controlType:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 235
    :pswitch_1
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->buttonsState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$ButtonsState;

    iget v1, p1, Lcom/parrot/freeflight/gamepad/GamePad$Input;->id:I

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$ButtonsState;->get(I)Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Button;

    move-result-object v0

    goto :goto_0

    .line 237
    :pswitch_2
    iget-object v0, p1, Lcom/parrot/freeflight/gamepad/GamePad$Input;->controlName:Ljava/lang/String;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->leftTrigger:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->leftTrigger:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;

    goto :goto_0

    .line 240
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->rightTrigger:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;

    goto :goto_0

    .line 243
    :pswitch_3
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->dpad:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButtonsState;

    iget v1, p1, Lcom/parrot/freeflight/gamepad/GamePad$Input;->direction:I

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButtonsState;->getButton(I)Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButton;

    move-result-object v0

    goto :goto_0

    .line 233
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getPressedInputCount(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;)I
    .locals 3
    .param p1, "currentInput"    # Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 223
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->pressedInputs:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->consumedPressableInputs:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    add-int v0, v1, v2

    .line 224
    .local v0, "count":I
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;->getLastAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 225
    :cond_0
    return v0
.end method

.method public isButtonPressed(I)Z
    .locals 2
    .param p1, "keyCode"    # I

    .prologue
    .line 193
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->buttonsState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$ButtonsState;

    invoke-virtual {v1, p1}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$ButtonsState;->get(I)Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Button;

    move-result-object v0

    .line 194
    .local v0, "button":Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Button;
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->pressedInputs:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->consumedPressableInputs:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onDpadEvent(I)V
    .locals 4
    .param p1, "direction"    # I

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->resetFlags()V

    .line 109
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->dpad:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButtonsState;

    invoke-virtual {v2}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButtonsState;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 110
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->dpad:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButtonsState;

    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->dpad:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButtonsState;

    invoke-virtual {v3}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButtonsState;->getDirection()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButtonsState;->getButton(I)Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButton;

    move-result-object v1

    .line 111
    .local v1, "prevButton":Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButton;
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->dpad:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButtonsState;

    invoke-virtual {v2, p1}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButtonsState;->setDirection(I)V

    .line 112
    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->onPressableUp(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;)V

    .line 113
    :cond_0
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->dpad:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButtonsState;

    invoke-virtual {v2}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButtonsState;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->dpad:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButtonsState;

    invoke-virtual {v2, p1}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButtonsState;->getButton(I)Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButton;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->onPressableDown(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;)V

    .line 119
    .end local v1    # "prevButton":Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButton;
    :cond_1
    :goto_0
    return-void

    .line 115
    :cond_2
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->dpad:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButtonsState;

    invoke-virtual {v2, p1}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButtonsState;->setDirection(I)V

    .line 116
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->dpad:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButtonsState;

    invoke-virtual {v2, p1}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButtonsState;->getButton(I)Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButton;

    move-result-object v0

    .line 117
    .local v0, "button":Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButton;
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->dpad:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButtonsState;

    invoke-virtual {v2, p1}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButtonsState;->getButton(I)Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButton;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->onPressableDown(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;)V

    goto :goto_0
.end method

.method public onJoystickEvent(FFFFFFFF)V
    .locals 1
    .param p1, "leftJoystickX"    # F
    .param p2, "leftJoystickY"    # F
    .param p3, "rightJoystickX"    # F
    .param p4, "rightJoystickY"    # F
    .param p5, "topLeftJoystickX"    # F
    .param p6, "topLeftJoystickY"    # F
    .param p7, "topRightJoystickX"    # F
    .param p8, "topRightJoystickY"    # F

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->resetFlags()V

    .line 159
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->leftJoystick:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;

    invoke-virtual {v0, p1, p2}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;->setValue(FF)V

    .line 160
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->rightJoystick:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;

    invoke-virtual {v0, p3, p4}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;->setValue(FF)V

    .line 161
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->topLeftJoystick:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;

    invoke-virtual {v0, p5, p6}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;->setValue(FF)V

    .line 162
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->topRightJoystick:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;

    invoke-virtual {v0, p7, p8}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;->setValue(FF)V

    .line 163
    return-void
.end method

.method onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->resetFlags()V

    .line 73
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->buttonsState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$ButtonsState;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$ButtonsState;->get(I)Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Button;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->onPressableDown(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;)V

    .line 74
    const/4 v0, 0x1

    return v0
.end method

.method onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->resetFlags()V

    .line 79
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->buttonsState:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$ButtonsState;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$ButtonsState;->get(I)Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Button;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->onPressableUp(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;)V

    .line 80
    const/4 v0, 0x1

    return v0
.end method

.method public onTriggerEvent(FF)V
    .locals 1
    .param p1, "leftTriggerValue"    # F
    .param p2, "rightTriggerValue"    # F

    .prologue
    .line 84
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->leftTrigger:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;

    invoke-direct {p0, v0, p1}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->onTriggerEvent(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;F)V

    .line 85
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->rightTrigger:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;

    invoke-direct {p0, v0, p2}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->onTriggerEvent(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;F)V

    .line 86
    return-void
.end method

.method resetFlags()V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->leftJoystick:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;->resetFlag()V

    .line 199
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->rightJoystick:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;->resetFlag()V

    .line 200
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->topLeftJoystick:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;->resetFlag()V

    .line 201
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->topRightJoystick:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;->resetFlag()V

    .line 203
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->leftTrigger:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;->resetFlag()V

    .line 204
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->rightTrigger:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;->resetFlag()V

    .line 206
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;->dpad:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButtonsState;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButtonsState;->resetFlag()V

    .line 207
    return-void
.end method
