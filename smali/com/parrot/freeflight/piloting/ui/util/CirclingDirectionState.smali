.class public Lcom/parrot/freeflight/piloting/ui/util/CirclingDirectionState;
.super Ljava/lang/Object;
.source "CirclingDirectionState.java"


# instance fields
.field private mCirclingDirection:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, -0x1

    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/util/CirclingDirectionState;->mCirclingDirection:I

    return-void
.end method

.method public static copyOf(Lcom/parrot/freeflight/piloting/ui/util/CirclingDirectionState;)Lcom/parrot/freeflight/piloting/ui/util/CirclingDirectionState;
    .locals 2
    .param p0, "state"    # Lcom/parrot/freeflight/piloting/ui/util/CirclingDirectionState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 14
    new-instance v0, Lcom/parrot/freeflight/piloting/ui/util/CirclingDirectionState;

    invoke-direct {v0}, Lcom/parrot/freeflight/piloting/ui/util/CirclingDirectionState;-><init>()V

    .line 15
    .local v0, "circlingDirectionState":Lcom/parrot/freeflight/piloting/ui/util/CirclingDirectionState;
    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/util/CirclingDirectionState;->mCirclingDirection:I

    iput v1, v0, Lcom/parrot/freeflight/piloting/ui/util/CirclingDirectionState;->mCirclingDirection:I

    .line 16
    return-object v0
.end method

.method public static createFromValue(I)Lcom/parrot/freeflight/piloting/ui/util/CirclingDirectionState;
    .locals 1
    .param p0, "circlingDirection"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 21
    new-instance v0, Lcom/parrot/freeflight/piloting/ui/util/CirclingDirectionState;

    invoke-direct {v0}, Lcom/parrot/freeflight/piloting/ui/util/CirclingDirectionState;-><init>()V

    .line 22
    .local v0, "circlingDirectionState":Lcom/parrot/freeflight/piloting/ui/util/CirclingDirectionState;
    iput p0, v0, Lcom/parrot/freeflight/piloting/ui/util/CirclingDirectionState;->mCirclingDirection:I

    .line 23
    return-object v0
.end method


# virtual methods
.method public getCirclingDirection()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/util/CirclingDirectionState;->mCirclingDirection:I

    return v0
.end method

.method public update(I)Z
    .locals 2
    .param p1, "circlingDirection"    # I

    .prologue
    .line 31
    const/4 v0, 0x0

    .line 32
    .local v0, "updated":Z
    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/util/CirclingDirectionState;->mCirclingDirection:I

    if-eq v1, p1, :cond_0

    .line 33
    const/4 v0, 0x1

    .line 34
    iput p1, p0, Lcom/parrot/freeflight/piloting/ui/util/CirclingDirectionState;->mCirclingDirection:I

    .line 36
    :cond_0
    return v0
.end method

.method public update(Lcom/parrot/freeflight/piloting/ui/util/CirclingDirectionState;)Z
    .locals 1
    .param p1, "state"    # Lcom/parrot/freeflight/piloting/ui/util/CirclingDirectionState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 27
    iget v0, p1, Lcom/parrot/freeflight/piloting/ui/util/CirclingDirectionState;->mCirclingDirection:I

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/ui/util/CirclingDirectionState;->update(I)Z

    move-result v0

    return v0
.end method
