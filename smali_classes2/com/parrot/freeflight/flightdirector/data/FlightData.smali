.class public Lcom/parrot/freeflight/flightdirector/data/FlightData;
.super Ljava/lang/Object;
.source "FlightData.java"


# instance fields
.field private mImageRes:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field private mTheme:I
    .annotation build Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder$Theme;
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "theme"    # I
        .annotation build Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder$Theme;
        .end annotation
    .end param
    .param p2, "imageRes"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lcom/parrot/freeflight/flightdirector/data/FlightData;->mTheme:I

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/data/FlightData;->mName:Ljava/lang/String;

    .line 19
    iput p2, p0, Lcom/parrot/freeflight/flightdirector/data/FlightData;->mImageRes:I

    .line 20
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "theme"    # I
        .annotation build Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder$Theme;
        .end annotation
    .end param
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lcom/parrot/freeflight/flightdirector/data/FlightData;->mTheme:I

    .line 24
    iput-object p2, p0, Lcom/parrot/freeflight/flightdirector/data/FlightData;->mName:Ljava/lang/String;

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/parrot/freeflight/flightdirector/data/FlightData;->mImageRes:I

    .line 26
    return-void
.end method


# virtual methods
.method public getImageRes()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/parrot/freeflight/flightdirector/data/FlightData;->mImageRes:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/data/FlightData;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getTheme()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/parrot/freeflight/flightdirector/data/FlightData;->mTheme:I

    return v0
.end method
