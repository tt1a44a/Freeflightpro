.class public Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;
.super Ljava/lang/Object;
.source "MVFlightAnalyserResult.java"


# instance fields
.field public dataDuration:D

.field public dataStartTime:D

.field public droneType:Ljava/lang/String;

.field public locationArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field public maxAltitude:F

.field public maxSpeed:F

.field public timingsArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;->timingsArray:Ljava/util/ArrayList;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;->locationArray:Ljava/util/ArrayList;

    .line 23
    return-void
.end method
