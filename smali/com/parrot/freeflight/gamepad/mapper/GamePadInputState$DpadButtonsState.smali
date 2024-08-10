.class public Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButtonsState;
.super Ljava/lang/Object;
.source "GamePadInputState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "DpadButtonsState"
.end annotation


# instance fields
.field private mConsumed:I

.field private mDirection:I

.field private final mDownButton:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButton;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mLeftButton:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButton;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mPressed:Z

.field private final mRightButton:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButton;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mUpButton:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButton;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 532
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 533
    new-instance v0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButton;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButton;-><init>(I)V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButtonsState;->mLeftButton:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButton;

    .line 534
    new-instance v0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButton;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButton;-><init>(I)V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButtonsState;->mRightButton:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButton;

    .line 535
    new-instance v0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButton;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButton;-><init>(I)V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButtonsState;->mUpButton:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButton;

    .line 536
    new-instance v0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButton;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButton;-><init>(I)V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButtonsState;->mDownButton:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButton;

    .line 537
    const/4 v0, 0x6

    iput v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButtonsState;->mDirection:I

    .line 538
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 558
    invoke-virtual {p0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButtonsState;->resetFlag()V

    .line 559
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButtonsState;->mPressed:Z

    .line 560
    const/4 v0, 0x6

    iput v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButtonsState;->mDirection:I

    .line 561
    return-void
.end method

.method public getButton(I)Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButton;
    .locals 1
    .param p1, "direction"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 570
    packed-switch p1, :pswitch_data_0

    .line 580
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 572
    :pswitch_0
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButtonsState;->mDownButton:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButton;

    goto :goto_0

    .line 574
    :pswitch_1
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButtonsState;->mUpButton:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButton;

    goto :goto_0

    .line 576
    :pswitch_2
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButtonsState;->mLeftButton:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButton;

    goto :goto_0

    .line 578
    :pswitch_3
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButtonsState;->mRightButton:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButton;

    goto :goto_0

    .line 570
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public getDirection()I
    .locals 1

    .prologue
    .line 565
    iget v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButtonsState;->mDirection:I

    return v0
.end method

.method public isPressed()Z
    .locals 1

    .prologue
    .line 550
    iget-boolean v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButtonsState;->mPressed:Z

    return v0
.end method

.method public resetFlag()V
    .locals 1

    .prologue
    .line 554
    const/4 v0, 0x0

    iput v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButtonsState;->mConsumed:I

    .line 555
    return-void
.end method

.method public setDirection(I)V
    .locals 1
    .param p1, "direction"    # I

    .prologue
    .line 543
    iget v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButtonsState;->mDirection:I

    if-eq v0, p1, :cond_0

    .line 544
    iput p1, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButtonsState;->mDirection:I

    .line 545
    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButtonsState;->mPressed:Z

    .line 547
    :cond_0
    return-void

    .line 545
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 586
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DpadState: d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButtonsState;->mDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " p:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButtonsState;->mPressed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " c:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButtonsState;->mConsumed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
