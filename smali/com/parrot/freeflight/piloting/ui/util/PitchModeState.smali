.class public Lcom/parrot/freeflight/piloting/ui/util/PitchModeState;
.super Ljava/lang/Object;
.source "PitchModeState.java"


# instance fields
.field private mPitchMode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, -0x1

    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/util/PitchModeState;->mPitchMode:I

    return-void
.end method

.method public static copyOf(Lcom/parrot/freeflight/piloting/ui/util/PitchModeState;)Lcom/parrot/freeflight/piloting/ui/util/PitchModeState;
    .locals 2
    .param p0, "state"    # Lcom/parrot/freeflight/piloting/ui/util/PitchModeState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 15
    new-instance v0, Lcom/parrot/freeflight/piloting/ui/util/PitchModeState;

    invoke-direct {v0}, Lcom/parrot/freeflight/piloting/ui/util/PitchModeState;-><init>()V

    .line 16
    .local v0, "pitchModeState":Lcom/parrot/freeflight/piloting/ui/util/PitchModeState;
    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/util/PitchModeState;->mPitchMode:I

    iput v1, v0, Lcom/parrot/freeflight/piloting/ui/util/PitchModeState;->mPitchMode:I

    .line 17
    return-object v0
.end method

.method public static createFromValue(I)Lcom/parrot/freeflight/piloting/ui/util/PitchModeState;
    .locals 1
    .param p0, "pitchMode"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 22
    new-instance v0, Lcom/parrot/freeflight/piloting/ui/util/PitchModeState;

    invoke-direct {v0}, Lcom/parrot/freeflight/piloting/ui/util/PitchModeState;-><init>()V

    .line 23
    .local v0, "pitchModeState":Lcom/parrot/freeflight/piloting/ui/util/PitchModeState;
    iput p0, v0, Lcom/parrot/freeflight/piloting/ui/util/PitchModeState;->mPitchMode:I

    .line 24
    return-object v0
.end method


# virtual methods
.method public getPitchMode()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/util/PitchModeState;->mPitchMode:I

    return v0
.end method

.method public update(I)Z
    .locals 2
    .param p1, "pitchMode"    # I

    .prologue
    .line 32
    const/4 v0, 0x0

    .line 33
    .local v0, "updated":Z
    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/util/PitchModeState;->mPitchMode:I

    if-eq v1, p1, :cond_0

    .line 34
    const/4 v0, 0x1

    .line 35
    iput p1, p0, Lcom/parrot/freeflight/piloting/ui/util/PitchModeState;->mPitchMode:I

    .line 37
    :cond_0
    return v0
.end method

.method public update(Lcom/parrot/freeflight/piloting/ui/util/PitchModeState;)Z
    .locals 1
    .param p1, "state"    # Lcom/parrot/freeflight/piloting/ui/util/PitchModeState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 28
    iget v0, p1, Lcom/parrot/freeflight/piloting/ui/util/PitchModeState;->mPitchMode:I

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/ui/util/PitchModeState;->update(I)Z

    move-result v0

    return v0
.end method
