.class public Lcom/parrot/freeflight/core/academy/model/ARAcademyDrone;
.super Ljava/lang/Object;
.source "ARAcademyDrone.java"


# static fields
.field private static final ARACADEMY_DRONE_DEVICE:Ljava/lang/String; = "device"

.field private static final ARACADEMY_DRONE_NICKNAME:Ljava/lang/String; = "nickname"

.field private static final ARACADEMY_DRONE_NULL:Ljava/lang/String; = "null"

.field private static final ARACADEMY_DRONE_OPTIN:Ljava/lang/String; = "optin"

.field private static final ARACADEMY_DRONE_PRODUCT_ID:Ljava/lang/String; = "product_id"

.field private static final ARACADEMY_DRONE_PRODUCT_STYLE:Ljava/lang/String; = "product_style"

.field private static final ARACADEMY_DRONE_SERIAL:Ljava/lang/String; = "serial"

.field private static final ARACADEMY_DRONE_TAG:Ljava/lang/String; = "ARAcademyDrone"

.field private static final ARACADEMY_DRONE_TOTAL_PICTURES:Ljava/lang/String; = "total_pictures"

.field private static final ARACADEMY_DRONE_TOTAL_RUNS:Ljava/lang/String; = "total_runs"

.field private static final ARACADEMY_DRONE_TOTAL_RUNS_TIME:Ljava/lang/String; = "total_runs_time"

.field private static final ARACADEMY_DRONE_TOTAL_VIDEOS:Ljava/lang/String; = "total_videos"


# instance fields
.field protected droneDevice:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "device"
    .end annotation
.end field

.field protected droneNickname:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "nickname"
    .end annotation
.end field

.field protected droneOptin:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "optin"
    .end annotation
.end field

.field protected droneProductId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "product_id"
    .end annotation
.end field

.field protected droneProductStyle:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "product_style"
    .end annotation
.end field

.field protected droneSerial:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "serial"
    .end annotation
.end field

.field protected droneTotalPictures:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "total_pictures"
    .end annotation
.end field

.field protected droneTotalRuns:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "total_runs"
    .end annotation
.end field

.field protected droneTotalRunsTime:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "total_runs_time"
    .end annotation
.end field

.field protected droneTotalVideos:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "total_videos"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyDrone;->droneSerial:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyDrone;->droneNickname:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyDrone;->droneDevice:Ljava/lang/String;

    .line 54
    return-void
.end method


# virtual methods
.method public getDevice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyDrone;->droneDevice:Ljava/lang/String;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyDrone;->droneNickname:Ljava/lang/String;

    return-object v0
.end method

.method public getOptin()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyDrone;->droneOptin:Z

    return v0
.end method

.method public getProductId()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyDrone;->droneProductId:I

    return v0
.end method

.method public getProductStyle()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyDrone;->droneProductStyle:I

    return v0
.end method

.method public getSerial()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyDrone;->droneSerial:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalPictures()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyDrone;->droneTotalPictures:I

    return v0
.end method

.method public getTotalRuns()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyDrone;->droneTotalRuns:I

    return v0
.end method

.method public getTotalRunsTime()D
    .locals 2

    .prologue
    .line 98
    iget-wide v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyDrone;->droneTotalRunsTime:D

    return-wide v0
.end method

.method public getTotalVideos()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyDrone;->droneTotalVideos:I

    return v0
.end method

.method public setDevice(Ljava/lang/String;)V
    .locals 0
    .param p1, "device"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyDrone;->droneDevice:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0
    .param p1, "nickname"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyDrone;->droneNickname:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setOptin(Z)V
    .locals 0
    .param p1, "optin"    # Z

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyDrone;->droneOptin:Z

    .line 95
    return-void
.end method

.method public setProductId(I)V
    .locals 0
    .param p1, "productId"    # I

    .prologue
    .line 70
    iput p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyDrone;->droneProductId:I

    .line 71
    return-void
.end method

.method public setProductStyle(I)V
    .locals 0
    .param p1, "productStyle"    # I

    .prologue
    .line 134
    iput p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyDrone;->droneProductStyle:I

    .line 135
    return-void
.end method

.method public setSerial(Ljava/lang/String;)V
    .locals 0
    .param p1, "serial"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyDrone;->droneSerial:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setTotalPictures(I)V
    .locals 0
    .param p1, "totalPictures"    # I

    .prologue
    .line 110
    iput p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyDrone;->droneTotalPictures:I

    .line 111
    return-void
.end method

.method public setTotalRuns(I)V
    .locals 0
    .param p1, "totalRuns"    # I

    .prologue
    .line 126
    iput p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyDrone;->droneTotalRuns:I

    .line 127
    return-void
.end method

.method public setTotalRunsTime(D)V
    .locals 1
    .param p1, "totalRunsTime"    # D

    .prologue
    .line 102
    iput-wide p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyDrone;->droneTotalRunsTime:D

    .line 103
    return-void
.end method

.method public setTotalVideos(I)V
    .locals 0
    .param p1, "totalVideos"    # I

    .prologue
    .line 118
    iput p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyDrone;->droneTotalVideos:I

    .line 119
    return-void
.end method
