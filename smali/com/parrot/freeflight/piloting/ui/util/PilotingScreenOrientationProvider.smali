.class public Lcom/parrot/freeflight/piloting/ui/util/PilotingScreenOrientationProvider;
.super Ljava/lang/Object;
.source "PilotingScreenOrientationProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOrientation(Landroid/content/Context;Z)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "gyroscopeSensitive"    # Z

    .prologue
    .line 12
    invoke-static {p0}, Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;->isFpvEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p0, v0, p1}, Lcom/parrot/freeflight/piloting/ui/util/PilotingScreenOrientationProvider;->getOrientation(Landroid/content/Context;ZZ)I

    move-result v0

    return v0
.end method

.method public static getOrientation(Landroid/content/Context;ZZ)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "fpvEnabled"    # Z
    .param p2, "gyroscopeSensitive"    # Z

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-static {p0, v0}, Lcom/parrot/freeflight/util/AntennaPositionChecker;->checkForceReverseRotation(Landroid/content/Context;I)Z

    move-result v1

    .line 18
    .local v1, "reverseOrientationNeeded":Z
    if-eqz p1, :cond_0

    .line 19
    const/4 v0, 0x6

    .line 25
    .local v0, "orientation":I
    :goto_0
    return v0

    .line 20
    .end local v0    # "orientation":I
    :cond_0
    if-nez p2, :cond_2

    .line 21
    if-eqz v1, :cond_1

    const/16 v0, 0x8

    .restart local v0    # "orientation":I
    :cond_1
    goto :goto_0

    .line 23
    .end local v0    # "orientation":I
    :cond_2
    const/4 v0, 0x6

    .restart local v0    # "orientation":I
    goto :goto_0
.end method
