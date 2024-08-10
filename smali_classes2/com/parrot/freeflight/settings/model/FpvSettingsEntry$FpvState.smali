.class public Lcom/parrot/freeflight/settings/model/FpvSettingsEntry$FpvState;
.super Ljava/lang/Object;
.source "FpvSettingsEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/settings/model/FpvSettingsEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FpvState"
.end annotation


# instance fields
.field private mAutoLaunchEnabled:Z

.field private mEyesCalibrationEnabled:Z

.field private mGlassesType:I

.field private mGlassesTypeEditable:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method

.method synthetic constructor <init>(Lcom/parrot/freeflight/settings/model/FpvSettingsEntry$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parrot/freeflight/settings/model/FpvSettingsEntry$1;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/parrot/freeflight/settings/model/FpvSettingsEntry$FpvState;-><init>()V

    return-void
.end method

.method private constructor <init>(ZZIZ)V
    .locals 0
    .param p1, "autoLaunchEnabled"    # Z
    .param p2, "eyesCalibrationEnabled"    # Z
    .param p3, "glassesType"    # I
    .param p4, "glassesTypeEditable"    # Z

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-boolean p1, p0, Lcom/parrot/freeflight/settings/model/FpvSettingsEntry$FpvState;->mAutoLaunchEnabled:Z

    .line 71
    iput-boolean p2, p0, Lcom/parrot/freeflight/settings/model/FpvSettingsEntry$FpvState;->mEyesCalibrationEnabled:Z

    .line 72
    iput p3, p0, Lcom/parrot/freeflight/settings/model/FpvSettingsEntry$FpvState;->mGlassesType:I

    .line 73
    iput-boolean p4, p0, Lcom/parrot/freeflight/settings/model/FpvSettingsEntry$FpvState;->mGlassesTypeEditable:Z

    .line 74
    return-void
.end method

.method synthetic constructor <init>(ZZIZLcom/parrot/freeflight/settings/model/FpvSettingsEntry$1;)V
    .locals 0
    .param p1, "x0"    # Z
    .param p2, "x1"    # Z
    .param p3, "x2"    # I
    .param p4, "x3"    # Z
    .param p5, "x4"    # Lcom/parrot/freeflight/settings/model/FpvSettingsEntry$1;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/parrot/freeflight/settings/model/FpvSettingsEntry$FpvState;-><init>(ZZIZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/settings/model/FpvSettingsEntry$FpvState;Lcom/parrot/freeflight/settings/model/FpvSettingsEntry$FpvState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/model/FpvSettingsEntry$FpvState;
    .param p1, "x1"    # Lcom/parrot/freeflight/settings/model/FpvSettingsEntry$FpvState;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/settings/model/FpvSettingsEntry$FpvState;->update(Lcom/parrot/freeflight/settings/model/FpvSettingsEntry$FpvState;)Z

    move-result v0

    return v0
.end method

.method private update(Lcom/parrot/freeflight/settings/model/FpvSettingsEntry$FpvState;)Z
    .locals 2
    .param p1, "fpvState"    # Lcom/parrot/freeflight/settings/model/FpvSettingsEntry$FpvState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 77
    iget-boolean v1, p1, Lcom/parrot/freeflight/settings/model/FpvSettingsEntry$FpvState;->mAutoLaunchEnabled:Z

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/settings/model/FpvSettingsEntry$FpvState;->updateAutoLaunchEnabled(Z)Z

    move-result v0

    .line 78
    .local v0, "updated":Z
    iget-boolean v1, p1, Lcom/parrot/freeflight/settings/model/FpvSettingsEntry$FpvState;->mEyesCalibrationEnabled:Z

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/settings/model/FpvSettingsEntry$FpvState;->updateEyesCalibrationEnabled(Z)Z

    move-result v1

    or-int/2addr v0, v1

    .line 79
    iget v1, p1, Lcom/parrot/freeflight/settings/model/FpvSettingsEntry$FpvState;->mGlassesType:I

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/settings/model/FpvSettingsEntry$FpvState;->updateGlassesType(I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 80
    iget-boolean v1, p1, Lcom/parrot/freeflight/settings/model/FpvSettingsEntry$FpvState;->mGlassesTypeEditable:Z

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/settings/model/FpvSettingsEntry$FpvState;->updateGlassesTypeEditable(Z)Z

    move-result v1

    or-int/2addr v0, v1

    .line 81
    return v0
.end method

.method private updateAutoLaunchEnabled(Z)Z
    .locals 2
    .param p1, "autoLaunchEnabled"    # Z

    .prologue
    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, "updated":Z
    iget-boolean v1, p0, Lcom/parrot/freeflight/settings/model/FpvSettingsEntry$FpvState;->mAutoLaunchEnabled:Z

    if-eq v1, p1, :cond_0

    .line 87
    iput-boolean p1, p0, Lcom/parrot/freeflight/settings/model/FpvSettingsEntry$FpvState;->mAutoLaunchEnabled:Z

    .line 88
    const/4 v0, 0x1

    .line 90
    :cond_0
    return v0
.end method

.method private updateEyesCalibrationEnabled(Z)Z
    .locals 2
    .param p1, "eyesCalibrationEnabled"    # Z

    .prologue
    .line 94
    const/4 v0, 0x0

    .line 95
    .local v0, "updated":Z
    iget-boolean v1, p0, Lcom/parrot/freeflight/settings/model/FpvSettingsEntry$FpvState;->mEyesCalibrationEnabled:Z

    if-eq v1, p1, :cond_0

    .line 96
    iput-boolean p1, p0, Lcom/parrot/freeflight/settings/model/FpvSettingsEntry$FpvState;->mEyesCalibrationEnabled:Z

    .line 97
    const/4 v0, 0x1

    .line 99
    :cond_0
    return v0
.end method

.method private updateGlassesType(I)Z
    .locals 2
    .param p1, "glassesType"    # I

    .prologue
    .line 103
    const/4 v0, 0x0

    .line 104
    .local v0, "updated":Z
    iget v1, p0, Lcom/parrot/freeflight/settings/model/FpvSettingsEntry$FpvState;->mGlassesType:I

    if-eq v1, p1, :cond_0

    .line 105
    iput p1, p0, Lcom/parrot/freeflight/settings/model/FpvSettingsEntry$FpvState;->mGlassesType:I

    .line 106
    const/4 v0, 0x1

    .line 108
    :cond_0
    return v0
.end method

.method private updateGlassesTypeEditable(Z)Z
    .locals 2
    .param p1, "glassesTypeEditable"    # Z

    .prologue
    .line 112
    const/4 v0, 0x0

    .line 113
    .local v0, "updated":Z
    iget-boolean v1, p0, Lcom/parrot/freeflight/settings/model/FpvSettingsEntry$FpvState;->mGlassesTypeEditable:Z

    if-eq v1, p1, :cond_0

    .line 114
    iput-boolean p1, p0, Lcom/parrot/freeflight/settings/model/FpvSettingsEntry$FpvState;->mGlassesTypeEditable:Z

    .line 115
    const/4 v0, 0x1

    .line 117
    :cond_0
    return v0
.end method


# virtual methods
.method public getGlassesType()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/parrot/freeflight/settings/model/FpvSettingsEntry$FpvState;->mGlassesType:I

    return v0
.end method

.method public isAutoLaunchEnabled()Z
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/parrot/freeflight/settings/model/FpvSettingsEntry$FpvState;->mAutoLaunchEnabled:Z

    return v0
.end method

.method public isEyesCalibrationEnabled()Z
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/parrot/freeflight/settings/model/FpvSettingsEntry$FpvState;->mEyesCalibrationEnabled:Z

    return v0
.end method

.method public isGlassesTypeEditable()Z
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/parrot/freeflight/settings/model/FpvSettingsEntry$FpvState;->mGlassesTypeEditable:Z

    return v0
.end method
