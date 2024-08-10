.class public Lcom/muvee/dsg/mmap/api/gpsreader/GpsReader;
.super Ljava/lang/Object;
.source "GpsReader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCreationTime(Ljava/lang/String;)Ljava/util/Date;
    .locals 9

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x4

    const/4 v4, 0x1

    const/16 v6, 0xc

    const/4 v5, 0x0

    .line 39
    invoke-static {p0}, Lcom/muvee/dsg/mmap/api/gpsreader/GpsReader;->nativeGetCreationTime(Ljava/lang/String;)D

    move-result-wide v0

    .line 40
    const-string v2, "%014.0f"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 41
    const-string v1, "GMT+00:00"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    .line 42
    invoke-virtual {v0, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 43
    const/4 v2, 0x2

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 44
    const/4 v2, 0x5

    const/16 v3, 0x8

    invoke-virtual {v0, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 45
    const/16 v2, 0xb

    const/16 v3, 0x8

    const/16 v4, 0xa

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 46
    const/16 v2, 0xa

    invoke-virtual {v0, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v6, v2}, Ljava/util/Calendar;->set(II)V

    .line 47
    const/16 v2, 0xd

    const/16 v3, 0xe

    invoke-virtual {v0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Ljava/util/Calendar;->set(II)V

    .line 48
    const/16 v0, 0xe

    invoke-virtual {v1, v0, v5}, Ljava/util/Calendar;->set(II)V

    .line 49
    const/16 v0, 0xf

    invoke-virtual {v1, v0, v5}, Ljava/util/Calendar;->set(II)V

    .line 51
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method private native nativeClose()I
.end method

.method private static native nativeGetCreationTime(Ljava/lang/String;)D
.end method

.method private native nativeGetGpsInfoAt(Lcom/muvee/dsg/mmap/api/gpsreader/GpsInfo;)I
.end method

.method private native nativeGetGpsInfoBetween(DD)[Lcom/muvee/dsg/mmap/api/gpsreader/GpsInfo;
.end method

.method private native nativeGetMapPoints()[Lcom/muvee/dsg/mmap/api/gpsreader/MapPoint;
.end method

.method private native nativeInit(Ljava/lang/String;Lcom/muvee/dsg/mmap/api/gpsreader/SummaryInfo;JJ)I
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/gpsreader/GpsReader;->nativeClose()I

    .line 56
    return-void
.end method

.method public getGpsInfoAt(D)Lcom/muvee/dsg/mmap/api/gpsreader/GpsInfo;
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/muvee/dsg/mmap/api/gpsreader/GpsInfo;

    invoke-direct {v0}, Lcom/muvee/dsg/mmap/api/gpsreader/GpsInfo;-><init>()V

    .line 28
    iput-wide p1, v0, Lcom/muvee/dsg/mmap/api/gpsreader/GpsInfo;->inputTime:D

    .line 29
    invoke-direct {p0, v0}, Lcom/muvee/dsg/mmap/api/gpsreader/GpsReader;->nativeGetGpsInfoAt(Lcom/muvee/dsg/mmap/api/gpsreader/GpsInfo;)I

    .line 30
    return-object v0
.end method

.method public getGpsInfoBetween(DD)[Lcom/muvee/dsg/mmap/api/gpsreader/GpsInfo;
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/muvee/dsg/mmap/api/gpsreader/GpsReader;->nativeGetGpsInfoBetween(DD)[Lcom/muvee/dsg/mmap/api/gpsreader/GpsInfo;

    move-result-object v0

    return-object v0
.end method

.method public getMapPoints()[Lcom/muvee/dsg/mmap/api/gpsreader/MapPoint;
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/gpsreader/GpsReader;->nativeGetMapPoints()[Lcom/muvee/dsg/mmap/api/gpsreader/MapPoint;

    move-result-object v0

    return-object v0
.end method

.method public init(Ljava/lang/String;JJ)Lcom/muvee/dsg/mmap/api/gpsreader/SummaryInfo;
    .locals 8

    .prologue
    .line 17
    new-instance v3, Lcom/muvee/dsg/mmap/api/gpsreader/SummaryInfo;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/gpsreader/SummaryInfo;-><init>()V

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    move-wide v6, p4

    .line 18
    invoke-direct/range {v1 .. v7}, Lcom/muvee/dsg/mmap/api/gpsreader/GpsReader;->nativeInit(Ljava/lang/String;Lcom/muvee/dsg/mmap/api/gpsreader/SummaryInfo;JJ)I

    .line 19
    return-object v3
.end method
