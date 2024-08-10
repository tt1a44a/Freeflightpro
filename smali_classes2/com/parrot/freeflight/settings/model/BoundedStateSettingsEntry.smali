.class public abstract Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;
.super Lcom/parrot/freeflight/settings/model/ABoundedStateSettingsEntry;
.source "BoundedStateSettingsEntry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Lcom/parrot/freeflight/core/model/Model;",
        "U:",
        "Lcom/parrot/freeflight/core/model/Model;",
        ">",
        "Lcom/parrot/freeflight/settings/model/ABoundedStateSettingsEntry",
        "<",
        "Lcom/parrot/freeflight/util/DoubleBoundedState;",
        "TV;TU;>;"
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
    .line 29
    .local p0, "this":Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;, "Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry<TV;TU;>;"
    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;-><init>(Ljava/lang/String;Lcom/parrot/freeflight/util/ui/Unit;D[Ljava/lang/String;Z)V

    .line 30
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
    .line 19
    .local p0, "this":Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;, "Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry<TV;TU;>;"
    const/4 v0, 0x0

    new-instance v1, Lcom/parrot/freeflight/util/DoubleBoundedState;

    invoke-direct {v1}, Lcom/parrot/freeflight/util/DoubleBoundedState;-><init>()V

    invoke-direct {p0, v0, p1, v1}, Lcom/parrot/freeflight/settings/model/ABoundedStateSettingsEntry;-><init>(ILjava/lang/String;Lcom/parrot/freeflight/util/DoubleBoundedState;)V

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;->mUnitAsString:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;->mUnit:Lcom/parrot/freeflight/util/ui/Unit;

    .line 22
    iput-wide p3, p0, Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;->mStep:D

    .line 23
    iput-object p5, p0, Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;->mInterpretedTexts:[Ljava/lang/String;

    .line 24
    iput-boolean p6, p0, Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;->mExponentialValue:Z

    .line 25
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
    .line 42
    .local p0, "this":Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;, "Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry<TV;TU;>;"
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;-><init>(Ljava/lang/String;Ljava/lang/String;DZ)V

    .line 43
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
    .local p0, "this":Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;, "Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry<TV;TU;>;"
    const/4 v1, 0x0

    .line 34
    new-instance v0, Lcom/parrot/freeflight/util/DoubleBoundedState;

    invoke-direct {v0}, Lcom/parrot/freeflight/util/DoubleBoundedState;-><init>()V

    invoke-direct {p0, v1, p1, v0}, Lcom/parrot/freeflight/settings/model/ABoundedStateSettingsEntry;-><init>(ILjava/lang/String;Lcom/parrot/freeflight/util/DoubleBoundedState;)V

    .line 35
    iput-object p2, p0, Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;->mUnitAsString:Ljava/lang/String;

    .line 36
    iput-wide p3, p0, Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;->mStep:D

    .line 37
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;->mInterpretedTexts:[Ljava/lang/String;

    .line 38
    iput-boolean p5, p0, Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;->mExponentialValue:Z

    .line 39
    return-void
.end method
