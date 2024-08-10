.class public abstract Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry;
.super Lcom/parrot/freeflight/settings/model/SettingsEntry;
.source "RadioButtonSettingsEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Lcom/parrot/freeflight/core/model/Model;",
        "U:",
        "Lcom/parrot/freeflight/core/model/Model;",
        ">",
        "Lcom/parrot/freeflight/settings/model/SettingsEntry",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "TV;TU;>;"
    }
.end annotation


# instance fields
.field private final mCenterButton:Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mDescription:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mEnabled:Z

.field private final mLeftButton:Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mRightButton:Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(ILjava/lang/String;Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;Ljava/lang/String;)V
    .locals 1
    .param p1, "valueType"    # I
    .param p2, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "leftButton"    # Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "centerButton"    # Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "rightButton"    # Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6, "description"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 32
    .local p0, "this":Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry;, "Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry<TV;TU;>;"
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/parrot/freeflight/settings/model/SettingsEntry;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .line 33
    iput-object p3, p0, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry;->mLeftButton:Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;

    .line 34
    iput-object p4, p0, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry;->mCenterButton:Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;

    .line 35
    iput-object p5, p0, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry;->mRightButton:Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;

    .line 36
    iput-object p6, p0, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry;->mDescription:Ljava/lang/String;

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry;->mEnabled:Z

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;Ljava/lang/String;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "leftButton"    # Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "centerButton"    # Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "rightButton"    # Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "description"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 27
    .local p0, "this":Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry;, "Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry<TV;TU;>;"
    const/16 v1, 0x15

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry;-><init>(ILjava/lang/String;Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;Ljava/lang/String;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "leftButton"    # Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "rightButton"    # Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "description"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 22
    .local p0, "this":Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry;, "Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry<TV;TU;>;"
    const/16 v1, 0x14

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry;-><init>(ILjava/lang/String;Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;Ljava/lang/String;)V

    .line 23
    return-void
.end method


# virtual methods
.method public getCenterButton()Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry;, "Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry<TV;TU;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry;->mCenterButton:Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry;, "Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry<TV;TU;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getLeftButton()Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry;, "Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry<TV;TU;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry;->mLeftButton:Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;

    return-object v0
.end method

.method public getRightButton()Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry;, "Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry<TV;TU;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry;->mRightButton:Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;

    return-object v0
.end method

.method protected hasChanged(Ljava/lang/Integer;Ljava/lang/Integer;)Z
    .locals 1
    .param p1, "oldValue"    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "newValue"    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 42
    .local p0, "this":Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry;, "Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry<TV;TU;>;"
    invoke-virtual {p1, p2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    iput-object p2, p0, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry;->mValue:Ljava/lang/Object;

    .line 44
    const/4 v0, 0x1

    .line 46
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .line 8
    .local p0, "this":Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry;, "Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry<TV;TU;>;"
    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry;->hasChanged(Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 70
    .local p0, "this":Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry;, "Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry<TV;TU;>;"
    iget-boolean v0, p0, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry;->mEnabled:Z

    return v0
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 74
    .local p0, "this":Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry;, "Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry<TV;TU;>;"
    iput-boolean p1, p0, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry;->mEnabled:Z

    .line 75
    return-void
.end method
