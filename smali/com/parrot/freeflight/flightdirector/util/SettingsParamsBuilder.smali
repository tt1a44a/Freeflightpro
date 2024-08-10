.class public Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;
.super Ljava/lang/Object;
.source "SettingsParamsBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder$Theme;,
        Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder$Style;
    }
.end annotation


# static fields
.field public static final DEFAULT_DURATION_ARRAY:[I

.field public static final STYLE_CINEMATIC:I = 0x1

.field public static final STYLE_STORY:I = 0x0

.field public static final STYLE_TRAILER:I = 0x2

.field public static final THEME_BLINDS:I = 0x4

.field public static final THEME_CARDWIPE:I = 0x2

.field public static final THEME_DIAGONAL:I = 0x5

.field public static final THEME_ELLIPSE:I = 0x9

.field public static final THEME_LOWER_THIRD:I = 0x3

.field public static final THEME_NONE:I = -0x1

.field public static final THEME_QUADRANT:I = 0x1

.field public static final THEME_RED_RIBBON:I = 0x6

.field public static final THEME_SIMPLE:I = 0x0

.field public static final THEME_TRAVELOGUE:I = 0x8

.field public static final THEME_WIPEOUT:I = 0x7

.field private static sInstance:Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;


# instance fields
.field private mAllowLanding:Z

.field private mAllowTakeOff:Z

.field private mDataFilePathArray:Ljava/util/ArrayList;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayGpsMap:Z

.field private mDisplayLocation:Z

.field private mDisplayLogo:Z

.field private mDisplayTelemetry:Z

.field private mDuration:I

.field private mMusicPath:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mMusicStartTime:F

.field private mStyle:I
    .annotation build Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder$Style;
    .end annotation
.end field

.field private mTheme:I
    .annotation build Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder$Theme;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->DEFAULT_DURATION_ARRAY:[I

    return-void

    nop

    :array_0
    .array-data 4
        0xf
        0x1e
        0x3c
        0x5a
        0x78
        0x96
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->resetParam(Landroid/content/Context;)V

    .line 104
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 86
    sget-object v0, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->sInstance:Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->sInstance:Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;

    .line 89
    :cond_0
    sget-object v0, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->sInstance:Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;

    return-object v0
.end method

.method public static getMaxMomentsCount(I)I
    .locals 1
    .param p0, "targetDuration"    # I

    .prologue
    .line 96
    mul-int/lit8 v0, p0, 0x3

    div-int/lit8 v0, v0, 0xf

    return v0
.end method


# virtual methods
.method public build()Lcom/muvee/mvdronecomposer/SettingsParam;
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 216
    new-instance v0, Lcom/muvee/mvdronecomposer/SettingsParam;

    invoke-direct {v0}, Lcom/muvee/mvdronecomposer/SettingsParam;-><init>()V

    .line 218
    .local v0, "settingsParam":Lcom/muvee/mvdronecomposer/SettingsParam;
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->mMusicPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/muvee/mvdronecomposer/SettingsParam;->setMusicPath(Ljava/lang/String;)V

    .line 219
    iget v1, p0, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->mMusicStartTime:F

    invoke-virtual {v0, v1}, Lcom/muvee/mvdronecomposer/SettingsParam;->setMusicStartTimeMs(F)V

    .line 220
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->mDataFilePathArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/muvee/mvdronecomposer/SettingsParam;->setDataFilePathArray(Ljava/util/ArrayList;)V

    .line 221
    iget v1, p0, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->mStyle:I

    invoke-virtual {v0, v1}, Lcom/muvee/mvdronecomposer/SettingsParam;->setStyleIndex(I)V

    .line 222
    iget-boolean v1, p0, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->mAllowLanding:Z

    invoke-virtual {v0, v1}, Lcom/muvee/mvdronecomposer/SettingsParam;->setAllowLanding(Z)V

    .line 223
    iget-boolean v1, p0, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->mAllowTakeOff:Z

    invoke-virtual {v0, v1}, Lcom/muvee/mvdronecomposer/SettingsParam;->setAllowTakeOff(Z)V

    .line 224
    iget v1, p0, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->mDuration:I

    invoke-virtual {v0, v1}, Lcom/muvee/mvdronecomposer/SettingsParam;->setDuration(I)V

    .line 226
    iget v1, p0, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->mTheme:I

    const/4 v4, -0x1

    if-eq v1, v4, :cond_3

    .line 227
    iget v1, p0, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->mTheme:I

    invoke-virtual {v0, v1}, Lcom/muvee/mvdronecomposer/SettingsParam;->setThemeIndex(I)V

    .line 228
    iget-boolean v1, p0, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->mDisplayLocation:Z

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/muvee/mvdronecomposer/SettingsParam;->setDisableLocationAndDate(Z)V

    .line 229
    iget-boolean v1, p0, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->mDisplayGpsMap:Z

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/muvee/mvdronecomposer/SettingsParam;->setDisableMapTrace(Z)V

    .line 230
    iget-boolean v1, p0, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->mDisplayTelemetry:Z

    if-nez v1, :cond_2

    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Lcom/muvee/mvdronecomposer/SettingsParam;->setDisableTelemetry(Z)V

    .line 238
    :goto_3
    iget-boolean v1, p0, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->mDisplayLogo:Z

    if-nez v1, :cond_4

    move v1, v2

    :goto_4
    invoke-virtual {v0, v1}, Lcom/muvee/mvdronecomposer/SettingsParam;->setDisableWatermark(Z)V

    .line 239
    iget-boolean v1, p0, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->mDisplayLogo:Z

    if-nez v1, :cond_5

    :goto_5
    invoke-virtual {v0, v2}, Lcom/muvee/mvdronecomposer/SettingsParam;->setDisableCredit(Z)V

    .line 241
    return-object v0

    :cond_0
    move v1, v3

    .line 228
    goto :goto_0

    :cond_1
    move v1, v3

    .line 229
    goto :goto_1

    :cond_2
    move v1, v3

    .line 230
    goto :goto_2

    .line 232
    :cond_3
    invoke-virtual {v0, v3}, Lcom/muvee/mvdronecomposer/SettingsParam;->setThemeIndex(I)V

    .line 233
    invoke-virtual {v0, v2}, Lcom/muvee/mvdronecomposer/SettingsParam;->setDisableLocationAndDate(Z)V

    .line 234
    invoke-virtual {v0, v2}, Lcom/muvee/mvdronecomposer/SettingsParam;->setDisableMapTrace(Z)V

    .line 235
    invoke-virtual {v0, v2}, Lcom/muvee/mvdronecomposer/SettingsParam;->setDisableTelemetry(Z)V

    goto :goto_3

    :cond_4
    move v1, v3

    .line 238
    goto :goto_4

    :cond_5
    move v2, v3

    .line 239
    goto :goto_5
.end method

.method public getDataFilePathArray()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->mDataFilePathArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->mDuration:I

    return v0
.end method

.method public getMusicPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->mMusicPath:Ljava/lang/String;

    return-object v0
.end method

.method public getStyle()I
    .locals 1
    .annotation build Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder$Style;
    .end annotation

    .prologue
    .line 128
    iget v0, p0, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->mStyle:I

    return v0
.end method

.method public getTheme()I
    .locals 1
    .annotation build Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder$Theme;
    .end annotation

    .prologue
    .line 137
    iget v0, p0, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->mTheme:I

    return v0
.end method

.method public hasManyVideos()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 119
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->mDataFilePathArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDisplayGpsMap()Z
    .locals 1

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->mDisplayGpsMap:Z

    return v0
.end method

.method public isDisplayLocation()Z
    .locals 1

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->mDisplayLocation:Z

    return v0
.end method

.method public isDisplayLogo()Z
    .locals 1

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->mDisplayLogo:Z

    return v0
.end method

.method public isDisplayTelemetry()Z
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->mDisplayTelemetry:Z

    return v0
.end method

.method public resetParam(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 200
    invoke-static {p1}, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;->randomSoundtrack(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->mMusicPath:Ljava/lang/String;

    .line 201
    const/4 v0, 0x0

    iput v0, p0, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->mMusicStartTime:F

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->mDataFilePathArray:Ljava/util/ArrayList;

    .line 203
    iput v1, p0, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->mStyle:I

    .line 204
    const/4 v0, -0x1

    iput v0, p0, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->mTheme:I

    .line 205
    sget-object v0, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->DEFAULT_DURATION_ARRAY:[I

    aget v0, v0, v1

    iput v0, p0, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->mDuration:I

    .line 206
    iput-boolean v1, p0, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->mAllowLanding:Z

    .line 207
    iput-boolean v1, p0, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->mAllowTakeOff:Z

    .line 209
    iput-boolean v1, p0, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->mDisplayLocation:Z

    .line 210
    iput-boolean v1, p0, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->mDisplayGpsMap:Z

    .line 211
    iput-boolean v1, p0, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->mDisplayTelemetry:Z

    .line 212
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->mDisplayLogo:Z

    .line 213
    return-void
.end method

.method public setDataFilePaths(Ljava/util/ArrayList;)V
    .locals 0
    .param p1    # Ljava/util/ArrayList;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 123
    .local p1, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->mDataFilePathArray:Ljava/util/ArrayList;

    .line 124
    return-void
.end method

.method public setDisplayGpsMap(Z)V
    .locals 0
    .param p1, "displayGpsMap"    # Z

    .prologue
    .line 171
    iput-boolean p1, p0, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->mDisplayGpsMap:Z

    .line 172
    return-void
.end method

.method public setDisplayLocation(Z)V
    .locals 0
    .param p1, "displayLocation"    # Z

    .prologue
    .line 163
    iput-boolean p1, p0, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->mDisplayLocation:Z

    .line 164
    return-void
.end method

.method public setDisplayLogo(Z)V
    .locals 0
    .param p1, "displayLogo"    # Z

    .prologue
    .line 187
    iput-boolean p1, p0, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->mDisplayLogo:Z

    .line 188
    return-void
.end method

.method public setDisplayTelemetry(Z)V
    .locals 0
    .param p1, "displayTelemetry"    # Z

    .prologue
    .line 179
    iput-boolean p1, p0, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->mDisplayTelemetry:Z

    .line 180
    return-void
.end method

.method public setDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 155
    iput p1, p0, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->mDuration:I

    .line 156
    return-void
.end method

.method public setMusicPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 111
    iput-object p1, p0, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->mMusicPath:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setMusicStartTime(F)V
    .locals 0
    .param p1, "musicStartTime"    # F

    .prologue
    .line 191
    iput p1, p0, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->mMusicStartTime:F

    .line 192
    return-void
.end method

.method public setStyle(I)V
    .locals 0
    .param p1, "style"    # I
        .annotation build Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder$Style;
        .end annotation
    .end param

    .prologue
    .line 132
    iput p1, p0, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->mStyle:I

    .line 133
    return-void
.end method

.method public setTheme(I)V
    .locals 0
    .param p1, "theme"    # I
        .annotation build Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder$Theme;
        .end annotation
    .end param

    .prologue
    .line 141
    iput p1, p0, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->mTheme:I

    .line 142
    return-void
.end method
