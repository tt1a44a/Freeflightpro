.class public Lcom/parrot/freeflight/core/academy/model/ARAcademyPilotStatistics;
.super Ljava/lang/Object;
.source "ARAcademyPilotStatistics.java"


# static fields
.field private static final ARACADEMY_PILOTSTATISTICS_ALTITUDE_MAX:Ljava/lang/String; = "altitude_max"

.field private static final ARACADEMY_PILOTSTATISTICS_COUNT_CRASH:Ljava/lang/String; = "count_crash"

.field private static final ARACADEMY_PILOTSTATISTICS_COUNT_DRONES:Ljava/lang/String; = "count_drones"

.field private static final ARACADEMY_PILOTSTATISTICS_COUNT_PHOTOS:Ljava/lang/String; = "count_photos"

.field private static final ARACADEMY_PILOTSTATISTICS_COUNT_RUNS:Ljava/lang/String; = "count_runs"

.field private static final ARACADEMY_PILOTSTATISTICS_COUNT_VIDEOS:Ljava/lang/String; = "count_videos"

.field private static final ARACADEMY_PILOTSTATISTICS_CRASH_AVERAGE:Ljava/lang/String; = "crash_average"

.field private static final ARACADEMY_PILOTSTATISTICS_LAST_DATE:Ljava/lang/String; = "last_date"

.field private static final ARACADEMY_PILOTSTATISTICS_LAST_DURATION:Ljava/lang/String; = "last_duration"

.field private static final ARACADEMY_PILOTSTATISTICS_NULL:Ljava/lang/String; = "null"

.field private static final ARACADEMY_PILOTSTATISTICS_SPEED_MAX:Ljava/lang/String; = "speed_max"

.field private static final ARACADEMY_PILOTSTATISTICS_TAG:Ljava/lang/String; = "ARAcademyPilotStatistics"

.field private static final ARACADEMY_PILOTSTATISTICS_TIME_AVERAGE:Ljava/lang/String; = "time_average"

.field private static final ARACADEMY_PILOTSTATISTICS_TIME_TOTAL:Ljava/lang/String; = "time_total"


# instance fields
.field protected pilotStatisticsAltitudeMax:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "altitude_max"
    .end annotation
.end field

.field protected pilotStatisticsCountCrash:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "count_crash"
    .end annotation
.end field

.field protected pilotStatisticsCountDrones:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "count_drones"
    .end annotation
.end field

.field protected pilotStatisticsCountPhotos:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "count_photos"
    .end annotation
.end field

.field protected pilotStatisticsCountRuns:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "count_runs"
    .end annotation
.end field

.field protected pilotStatisticsCountVideos:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "count_videos"
    .end annotation
.end field

.field protected pilotStatisticsCrashAverage:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "crash_average"
    .end annotation
.end field

.field protected pilotStatisticsLastDate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "last_date"
    .end annotation
.end field

.field protected pilotStatisticsLastDuration:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "last_duration"
    .end annotation
.end field

.field protected pilotStatisticsSpeedMax:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "speed_max"
    .end annotation
.end field

.field protected pilotStatisticsTimeAverage:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "time_average"
    .end annotation
.end field

.field protected pilotStatisticsTimeTotal:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "time_total"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPilotStatistics;->pilotStatisticsLastDate:Ljava/lang/String;

    .line 59
    return-void
.end method


# virtual methods
.method public getAltitudeMax()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPilotStatistics;->pilotStatisticsAltitudeMax:I

    return v0
.end method

.method public getCountCrash()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPilotStatistics;->pilotStatisticsCountCrash:I

    return v0
.end method

.method public getCountDrones()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPilotStatistics;->pilotStatisticsCountDrones:I

    return v0
.end method

.method public getCountPhotos()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPilotStatistics;->pilotStatisticsCountPhotos:I

    return v0
.end method

.method public getCountRuns()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPilotStatistics;->pilotStatisticsCountRuns:I

    return v0
.end method

.method public getCountVideos()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPilotStatistics;->pilotStatisticsCountVideos:I

    return v0
.end method

.method public getCrashAverage()D
    .locals 2

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPilotStatistics;->pilotStatisticsCrashAverage:D

    return-wide v0
.end method

.method public getLastDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPilotStatistics;->pilotStatisticsLastDate:Ljava/lang/String;

    return-object v0
.end method

.method public getLastDuration()D
    .locals 2

    .prologue
    .line 134
    iget-wide v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPilotStatistics;->pilotStatisticsLastDuration:D

    return-wide v0
.end method

.method public getSpeedMax()D
    .locals 2

    .prologue
    .line 126
    iget-wide v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPilotStatistics;->pilotStatisticsSpeedMax:D

    return-wide v0
.end method

.method public getTimeAverage()D
    .locals 2

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPilotStatistics;->pilotStatisticsTimeAverage:D

    return-wide v0
.end method

.method public getTimeTotal()D
    .locals 2

    .prologue
    .line 150
    iget-wide v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPilotStatistics;->pilotStatisticsTimeTotal:D

    return-wide v0
.end method

.method public setAltitudeMax(I)V
    .locals 0
    .param p1, "altitudeMax"    # I

    .prologue
    .line 114
    iput p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPilotStatistics;->pilotStatisticsAltitudeMax:I

    .line 115
    return-void
.end method

.method public setCountCrash(I)V
    .locals 0
    .param p1, "countCrash"    # I

    .prologue
    .line 106
    iput p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPilotStatistics;->pilotStatisticsCountCrash:I

    .line 107
    return-void
.end method

.method public setCountDrones(I)V
    .locals 0
    .param p1, "countDrones"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPilotStatistics;->pilotStatisticsCountDrones:I

    .line 67
    return-void
.end method

.method public setCountPhotos(I)V
    .locals 0
    .param p1, "countPhotos"    # I

    .prologue
    .line 90
    iput p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPilotStatistics;->pilotStatisticsCountPhotos:I

    .line 91
    return-void
.end method

.method public setCountRuns(I)V
    .locals 0
    .param p1, "countRuns"    # I

    .prologue
    .line 74
    iput p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPilotStatistics;->pilotStatisticsCountRuns:I

    .line 75
    return-void
.end method

.method public setCountVideos(I)V
    .locals 0
    .param p1, "countVideos"    # I

    .prologue
    .line 146
    iput p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPilotStatistics;->pilotStatisticsCountVideos:I

    .line 147
    return-void
.end method

.method public setCrashAverage(D)V
    .locals 1
    .param p1, "crashAverage"    # D

    .prologue
    .line 98
    iput-wide p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPilotStatistics;->pilotStatisticsCrashAverage:D

    .line 99
    return-void
.end method

.method public setLastDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "lastDate"    # Ljava/lang/String;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPilotStatistics;->pilotStatisticsLastDate:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public setLastDuration(I)V
    .locals 2
    .param p1, "lastDuration"    # I

    .prologue
    .line 138
    int-to-double v0, p1

    iput-wide v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPilotStatistics;->pilotStatisticsLastDuration:D

    .line 139
    return-void
.end method

.method public setSpeedMax(D)V
    .locals 1
    .param p1, "speedMax"    # D

    .prologue
    .line 130
    iput-wide p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPilotStatistics;->pilotStatisticsSpeedMax:D

    .line 131
    return-void
.end method

.method public setTimeAverage(I)V
    .locals 2
    .param p1, "timeAverage"    # I

    .prologue
    .line 82
    int-to-double v0, p1

    iput-wide v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPilotStatistics;->pilotStatisticsTimeAverage:D

    .line 83
    return-void
.end method

.method public setTimeTotal(D)V
    .locals 1
    .param p1, "timeTotal"    # D

    .prologue
    .line 154
    iput-wide p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPilotStatistics;->pilotStatisticsTimeTotal:D

    .line 155
    return-void
.end method
