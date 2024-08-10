.class public abstract Lcom/parrot/freeflight/settings/model/BoundedRecommendedStateSettingsEntry;
.super Lcom/parrot/freeflight/settings/model/ABoundedStateSettingsEntry;
.source "BoundedRecommendedStateSettingsEntry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M1:",
        "Lcom/parrot/freeflight/core/model/Model;",
        "M2:",
        "Lcom/parrot/freeflight/core/model/Model;",
        ">",
        "Lcom/parrot/freeflight/settings/model/ABoundedStateSettingsEntry",
        "<",
        "Lcom/parrot/freeflight/util/DoubleBoundedRecommendedState;",
        "TM1;TM2;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/parrot/freeflight/util/ui/Unit;D[Ljava/lang/String;)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "unit"    # Lcom/parrot/freeflight/util/ui/Unit;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "step"    # D
    .param p5, "interpretedTexts"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 30
    .local p0, "this":Lcom/parrot/freeflight/settings/model/BoundedRecommendedStateSettingsEntry;, "Lcom/parrot/freeflight/settings/model/BoundedRecommendedStateSettingsEntry<TM1;TM2;>;"
    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/parrot/freeflight/settings/model/BoundedRecommendedStateSettingsEntry;-><init>(Ljava/lang/String;Lcom/parrot/freeflight/util/ui/Unit;D[Ljava/lang/String;Z)V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/parrot/freeflight/util/ui/Unit;D[Ljava/lang/String;Z)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "unit"    # Lcom/parrot/freeflight/util/ui/Unit;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "step"    # D
    .param p5, "interpretedTexts"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6, "exponentialValue"    # Z

    .prologue
    .line 20
    .local p0, "this":Lcom/parrot/freeflight/settings/model/BoundedRecommendedStateSettingsEntry;, "Lcom/parrot/freeflight/settings/model/BoundedRecommendedStateSettingsEntry<TM1;TM2;>;"
    const/16 v0, 0x18

    new-instance v1, Lcom/parrot/freeflight/util/DoubleBoundedRecommendedState;

    invoke-direct {v1}, Lcom/parrot/freeflight/util/DoubleBoundedRecommendedState;-><init>()V

    invoke-direct {p0, v0, p1, v1}, Lcom/parrot/freeflight/settings/model/ABoundedStateSettingsEntry;-><init>(ILjava/lang/String;Lcom/parrot/freeflight/util/DoubleBoundedState;)V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/freeflight/settings/model/BoundedRecommendedStateSettingsEntry;->mUnitAsString:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/parrot/freeflight/settings/model/BoundedRecommendedStateSettingsEntry;->mUnit:Lcom/parrot/freeflight/util/ui/Unit;

    .line 23
    iput-wide p3, p0, Lcom/parrot/freeflight/settings/model/BoundedRecommendedStateSettingsEntry;->mStep:D

    .line 24
    iput-object p5, p0, Lcom/parrot/freeflight/settings/model/BoundedRecommendedStateSettingsEntry;->mInterpretedTexts:[Ljava/lang/String;

    .line 25
    iput-boolean p6, p0, Lcom/parrot/freeflight/settings/model/BoundedRecommendedStateSettingsEntry;->mExponentialValue:Z

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;D)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "unit"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "step"    # D

    .prologue
    .line 43
    .local p0, "this":Lcom/parrot/freeflight/settings/model/BoundedRecommendedStateSettingsEntry;, "Lcom/parrot/freeflight/settings/model/BoundedRecommendedStateSettingsEntry<TM1;TM2;>;"
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/parrot/freeflight/settings/model/BoundedRecommendedStateSettingsEntry;-><init>(Ljava/lang/String;Ljava/lang/String;DZ)V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;DZ)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "unit"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "step"    # D
    .param p5, "exponentialValue"    # Z

    .prologue
    .line 35
    .local p0, "this":Lcom/parrot/freeflight/settings/model/BoundedRecommendedStateSettingsEntry;, "Lcom/parrot/freeflight/settings/model/BoundedRecommendedStateSettingsEntry<TM1;TM2;>;"
    const/16 v0, 0x18

    new-instance v1, Lcom/parrot/freeflight/util/DoubleBoundedRecommendedState;

    invoke-direct {v1}, Lcom/parrot/freeflight/util/DoubleBoundedRecommendedState;-><init>()V

    invoke-direct {p0, v0, p1, v1}, Lcom/parrot/freeflight/settings/model/ABoundedStateSettingsEntry;-><init>(ILjava/lang/String;Lcom/parrot/freeflight/util/DoubleBoundedState;)V

    .line 36
    iput-object p2, p0, Lcom/parrot/freeflight/settings/model/BoundedRecommendedStateSettingsEntry;->mUnitAsString:Ljava/lang/String;

    .line 37
    iput-wide p3, p0, Lcom/parrot/freeflight/settings/model/BoundedRecommendedStateSettingsEntry;->mStep:D

    .line 38
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/parrot/freeflight/settings/model/BoundedRecommendedStateSettingsEntry;->mInterpretedTexts:[Ljava/lang/String;

    .line 39
    iput-boolean p5, p0, Lcom/parrot/freeflight/settings/model/BoundedRecommendedStateSettingsEntry;->mExponentialValue:Z

    .line 40
    return-void
.end method


# virtual methods
.method protected hasChanged(Lcom/parrot/freeflight/util/DoubleBoundedRecommendedState;Lcom/parrot/freeflight/util/DoubleBoundedRecommendedState;)Z
    .locals 1
    .param p1, "oldValue"    # Lcom/parrot/freeflight/util/DoubleBoundedRecommendedState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "newValue"    # Lcom/parrot/freeflight/util/DoubleBoundedRecommendedState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 55
    .local p0, "this":Lcom/parrot/freeflight/settings/model/BoundedRecommendedStateSettingsEntry;, "Lcom/parrot/freeflight/settings/model/BoundedRecommendedStateSettingsEntry<TM1;TM2;>;"
    invoke-virtual {p1, p2}, Lcom/parrot/freeflight/util/DoubleBoundedRecommendedState;->update(Lcom/parrot/freeflight/util/DoubleBoundedRecommendedState;)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic hasChanged(Lcom/parrot/freeflight/util/DoubleBoundedState;Lcom/parrot/freeflight/util/DoubleBoundedState;)Z
    .locals 1
    .param p1    # Lcom/parrot/freeflight/util/DoubleBoundedState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/parrot/freeflight/util/DoubleBoundedState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 9
    .local p0, "this":Lcom/parrot/freeflight/settings/model/BoundedRecommendedStateSettingsEntry;, "Lcom/parrot/freeflight/settings/model/BoundedRecommendedStateSettingsEntry<TM1;TM2;>;"
    check-cast p1, Lcom/parrot/freeflight/util/DoubleBoundedRecommendedState;

    check-cast p2, Lcom/parrot/freeflight/util/DoubleBoundedRecommendedState;

    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/settings/model/BoundedRecommendedStateSettingsEntry;->hasChanged(Lcom/parrot/freeflight/util/DoubleBoundedRecommendedState;Lcom/parrot/freeflight/util/DoubleBoundedRecommendedState;)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic hasChanged(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 9
    .local p0, "this":Lcom/parrot/freeflight/settings/model/BoundedRecommendedStateSettingsEntry;, "Lcom/parrot/freeflight/settings/model/BoundedRecommendedStateSettingsEntry<TM1;TM2;>;"
    check-cast p1, Lcom/parrot/freeflight/util/DoubleBoundedRecommendedState;

    check-cast p2, Lcom/parrot/freeflight/util/DoubleBoundedRecommendedState;

    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/settings/model/BoundedRecommendedStateSettingsEntry;->hasChanged(Lcom/parrot/freeflight/util/DoubleBoundedRecommendedState;Lcom/parrot/freeflight/util/DoubleBoundedRecommendedState;)Z

    move-result v0

    return v0
.end method
