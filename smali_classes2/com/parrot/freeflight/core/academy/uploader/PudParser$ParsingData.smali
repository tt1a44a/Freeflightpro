.class Lcom/parrot/freeflight/core/academy/uploader/PudParser$ParsingData;
.super Ljava/lang/Object;
.source "PudParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/academy/uploader/PudParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParsingData"
.end annotation


# instance fields
.field alertState:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;

.field controllerGpsLatitude:D

.field controllerGpsLongitude:D

.field crash:I

.field flyingTime:I

.field gpsAvailableField:Lcom/parrot/freeflight/core/academy/uploader/PudParser$GPS_AVAILABLE_FIELD_ENUM;

.field jump:I

.field jumpType:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_ANIMATIONSSTATE_JUMPTYPECHANGED_STATE_ENUM;

.field productGpsAvailable:Z

.field productGpsLatitude:D

.field productGpsLongitude:D

.field runTime:I

.field speed:D

.field time:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/parrot/freeflight/core/academy/uploader/PudParser$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parrot/freeflight/core/academy/uploader/PudParser$1;

    .prologue
    .line 415
    invoke-direct {p0}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ParsingData;-><init>()V

    return-void
.end method
