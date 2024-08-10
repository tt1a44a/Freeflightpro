.class public Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;
.super Ljava/lang/Object;
.source "ARAcademyRun.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final ARACADEMY_DATE_FORMAT:Ljava/lang/String; = "yyyyMMddHHmmss"

.field private static final ARACADEMY_RUN_AVATAR:Ljava/lang/String; = "avatar"

.field private static final ARACADEMY_RUN_CAPTURES:Ljava/lang/String; = "captures"

.field private static final ARACADEMY_RUN_CONTROLLER_APPLICATION:Ljava/lang/String; = "controller_application"

.field private static final ARACADEMY_RUN_CONTROLLER_MODEL:Ljava/lang/String; = "controller_model"

.field private static final ARACADEMY_RUN_CRASH:Ljava/lang/String; = "crash"

.field private static final ARACADEMY_RUN_DATE:Ljava/lang/String; = "date"

.field private static final ARACADEMY_RUN_DATE_FORMAT:Ljava/lang/String; = "yyyy-MM-dd"

.field private static final ARACADEMY_RUN_DUMMY_DATE:Ljava/lang/String; = "dummy_date"

.field private static final ARACADEMY_RUN_GPS_AVAILABLE:Ljava/lang/String; = "gps_available"

.field private static final ARACADEMY_RUN_GPS_LATITUDE:Ljava/lang/String; = "gps_latitude"

.field private static final ARACADEMY_RUN_GPS_LONGITUDE:Ljava/lang/String; = "gps_longitude"

.field private static final ARACADEMY_RUN_GRADE:Ljava/lang/String; = "grade"

.field private static final ARACADEMY_RUN_ID:Ljava/lang/String; = "id"

.field private static final ARACADEMY_RUN_JUMP:Ljava/lang/String; = "jump"

.field private static final ARACADEMY_RUN_NULL:Ljava/lang/String; = "null"

.field private static final ARACADEMY_RUN_PRODUCT_ID:Ljava/lang/String; = "product_id"

.field private static final ARACADEMY_RUN_PRODUCT_STYLE:Ljava/lang/String; = "product_style"

.field private static final ARACADEMY_RUN_RUN_ORIGIN:Ljava/lang/String; = "run_origin"

.field private static final ARACADEMY_RUN_RUN_TIME:Ljava/lang/String; = "run_time"

.field private static final ARACADEMY_RUN_SERIAL_NUMBER:Ljava/lang/String; = "serial_number"

.field private static final ARACADEMY_RUN_TAG:Ljava/lang/String; = "ARAcademyRun"

.field private static final ARACADEMY_RUN_TOTAL_RUN_TIME:Ljava/lang/String; = "total_run_time"

.field private static final ARACADEMY_RUN_USER:Ljava/lang/String; = "user"

.field private static final ARACADEMY_RUN_UUID:Ljava/lang/String; = "uuid"

.field private static final ARACADEMY_RUN_VIDEOS:Ljava/lang/String; = "videos"

.field private static final ARACADEMY_RUN_VISIBLE:Ljava/lang/String; = "visible"


# instance fields
.field protected runAvatar:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "avatar"
    .end annotation
.end field

.field protected runCaptures:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "captures"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/core/academy/model/ARAcademyRunCapture;",
            ">;"
        }
    .end annotation
.end field

.field protected runControllerApplication:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "controller_application"
    .end annotation
.end field

.field protected runControllerModel:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "controller_model"
    .end annotation
.end field

.field protected runCrash:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "crash"
    .end annotation
.end field

.field protected runDate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "date"
    .end annotation
.end field

.field protected runDummyDate:Ljava/util/Date;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "dummy_date"
    .end annotation
.end field

.field protected runGpsAvailable:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gps_available"
    .end annotation
.end field

.field protected runGpsLatitude:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gps_latitude"
    .end annotation
.end field

.field protected runGpsLongitude:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gps_longitude"
    .end annotation
.end field

.field protected runGrade:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "grade"
    .end annotation
.end field

.field protected runId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field protected runJump:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "jump"
    .end annotation
.end field

.field protected runProductId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "product_id"
    .end annotation
.end field

.field protected runProductStyle:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "product_style"
    .end annotation
.end field

.field protected runRunOrigin:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "run_origin"
    .end annotation
.end field

.field protected runRunTime:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "run_time"
    .end annotation
.end field

.field protected runSerialNumber:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "serial_number"
    .end annotation
.end field

.field protected runTotalRunTime:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "total_run_time"
    .end annotation
.end field

.field protected runUser:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "user"
    .end annotation
.end field

.field protected runUuid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "uuid"
    .end annotation
.end field

.field protected runVideos:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "videos"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/core/academy/model/ARAcademyRunVideo;",
            ">;"
        }
    .end annotation
.end field

.field protected runVisible:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "visible"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->runDate:Ljava/lang/String;

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->runSerialNumber:Ljava/lang/String;

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->runUuid:Ljava/lang/String;

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->runControllerModel:Ljava/lang/String;

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->runControllerApplication:Ljava/lang/String;

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->runUser:Ljava/lang/String;

    .line 99
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->runAvatar:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 7
    .param p1, "object"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const-string v4, ""

    iput-object v4, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->runDate:Ljava/lang/String;

    .line 63
    const-string v4, ""

    iput-object v4, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->runSerialNumber:Ljava/lang/String;

    .line 65
    const-string v4, ""

    iput-object v4, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->runUuid:Ljava/lang/String;

    .line 67
    const-string v4, ""

    iput-object v4, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->runControllerModel:Ljava/lang/String;

    .line 69
    const-string v4, ""

    iput-object v4, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->runControllerApplication:Ljava/lang/String;

    .line 89
    const-string v4, ""

    iput-object v4, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->runUser:Ljava/lang/String;

    .line 99
    const-string v4, ""

    iput-object v4, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->runAvatar:Ljava/lang/String;

    .line 116
    const-string v4, "dummy_date"

    invoke-static {p1, v4}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 117
    const-string v4, "dummy_date"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "dateString":Ljava/lang/String;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 119
    .local v3, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    iput-object v4, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->runDummyDate:Ljava/util/Date;

    .line 122
    .end local v0    # "dateString":Ljava/lang/String;
    .end local v3    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_0
    const-string v4, "id"

    invoke-static {p1, v4}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 123
    const-string v4, "id"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->runId:I

    .line 126
    :cond_1
    const-string v4, "date"

    invoke-static {p1, v4}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 127
    const-string v4, "date"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->runDate:Ljava/lang/String;

    .line 130
    :cond_2
    const-string/jumbo v4, "product_id"

    invoke-static {p1, v4}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 131
    const-string/jumbo v4, "product_id"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->runProductId:I

    .line 134
    :cond_3
    const-string/jumbo v4, "serial_number"

    invoke-static {p1, v4}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 135
    const-string/jumbo v4, "serial_number"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->runSerialNumber:Ljava/lang/String;

    .line 138
    :cond_4
    const-string/jumbo v4, "uuid"

    invoke-static {p1, v4}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 139
    const-string/jumbo v4, "uuid"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->runUuid:Ljava/lang/String;

    .line 142
    :cond_5
    const-string v4, "controller_model"

    invoke-static {p1, v4}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 143
    const-string v4, "controller_model"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->runControllerModel:Ljava/lang/String;

    .line 146
    :cond_6
    const-string v4, "controller_application"

    invoke-static {p1, v4}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 147
    const-string v4, "controller_application"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->runControllerApplication:Ljava/lang/String;

    .line 150
    :cond_7
    const-string/jumbo v4, "product_style"

    invoke-static {p1, v4}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 151
    const-string/jumbo v4, "product_style"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->runProductStyle:I

    .line 154
    :cond_8
    const-string v4, "gps_available"

    invoke-static {p1, v4}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 155
    const-string v4, "gps_available"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->runGpsAvailable:Z

    .line 158
    :cond_9
    const-string v4, "gps_latitude"

    invoke-static {p1, v4}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 159
    const-string v4, "gps_latitude"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->runGpsLatitude:D

    .line 162
    :cond_a
    const-string v4, "gps_longitude"

    invoke-static {p1, v4}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 163
    const-string v4, "gps_longitude"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->runGpsLongitude:D

    .line 166
    :cond_b
    const-string/jumbo v4, "run_time"

    invoke-static {p1, v4}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 167
    const-string/jumbo v4, "run_time"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->runRunTime:I

    .line 170
    :cond_c
    const-string/jumbo v4, "total_run_time"

    invoke-static {p1, v4}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 171
    const-string/jumbo v4, "total_run_time"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->runTotalRunTime:I

    .line 174
    :cond_d
    const-string/jumbo v4, "run_origin"

    invoke-static {p1, v4}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 175
    const-string/jumbo v4, "run_origin"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->runRunOrigin:I

    .line 178
    :cond_e
    const-string v4, "crash"

    invoke-static {p1, v4}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 179
    const-string v4, "crash"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->runCrash:I

    .line 182
    :cond_f
    const-string v4, "jump"

    invoke-static {p1, v4}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 183
    const-string v4, "jump"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->runJump:I

    .line 186
    :cond_10
    const-string/jumbo v4, "user"

    invoke-static {p1, v4}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 187
    const-string/jumbo v4, "user"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->runUser:Ljava/lang/String;

    .line 190
    :cond_11
    const-string/jumbo v4, "videos"

    invoke-static {p1, v4}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 191
    const-string/jumbo v4, "videos"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 193
    .local v2, "jsonArray":Lorg/json/JSONArray;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->runVideos:Ljava/util/List;

    .line 194
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_12

    .line 195
    iget-object v4, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->runVideos:Ljava/util/List;

    new-instance v5, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunVideo;

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunVideo;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 199
    .end local v1    # "i":I
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    :cond_12
    const-string v4, "captures"

    invoke-static {p1, v4}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 200
    const-string v4, "captures"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 202
    .restart local v2    # "jsonArray":Lorg/json/JSONArray;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->runCaptures:Ljava/util/List;

    .line 203
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_13

    .line 204
    iget-object v4, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->runCaptures:Ljava/util/List;

    new-instance v5, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunCapture;

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunCapture;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 208
    .end local v1    # "i":I
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    :cond_13
    const-string/jumbo v4, "visible"

    invoke-static {p1, v4}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 209
    const-string/jumbo v4, "visible"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->runVisible:Z

    .line 212
    :cond_14
    const-string v4, "grade"

    invoke-static {p1, v4}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 213
    const-string v4, "grade"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->runGrade:I

    .line 216
    :cond_15
    const-string v4, "avatar"

    invoke-static {p1, v4}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 217
    const-string v4, "avatar"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->runAvatar:Ljava/lang/String;

    .line 220
    :cond_16
    return-void
.end method

.method private static checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z
    .locals 2
    .param p0, "object"    # Lorg/json/JSONObject;
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 416
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static generateRequest(Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;)Lorg/json/JSONObject;
    .locals 8
    .param p0, "newModel"    # Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;

    .prologue
    .line 426
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 430
    .local v2, "json":Lorg/json/JSONObject;
    :try_start_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->getDummyDate()Ljava/util/Date;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 431
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 432
    .local v3, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {p0}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->getDummyDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 433
    .local v0, "dateString":Ljava/lang/String;
    const-string v4, "dummy_date"

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 436
    .end local v0    # "dateString":Ljava/lang/String;
    .end local v3    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_0
    const-string v4, "id"

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->getId()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 438
    const-string v4, "date"

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->getDate()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 440
    const-string/jumbo v4, "product_id"

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->getProductId()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 442
    const-string/jumbo v4, "serial_number"

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->getSerialNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 444
    const-string/jumbo v4, "uuid"

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->getUuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 446
    const-string v4, "controller_model"

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->getControllerModel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 448
    const-string v4, "controller_application"

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->getControllerApplication()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 450
    const-string/jumbo v4, "product_style"

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->getProductStyle()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 452
    const-string v4, "gps_available"

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->getGpsAvailable()Z

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 454
    const-string v4, "gps_latitude"

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->getGpsLatitude()D

    move-result-wide v6

    invoke-virtual {v2, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 456
    const-string v4, "gps_longitude"

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->getGpsLongitude()D

    move-result-wide v6

    invoke-virtual {v2, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 458
    const-string/jumbo v4, "run_time"

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->getRunTime()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 460
    const-string/jumbo v4, "total_run_time"

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->getTotalRunTime()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 462
    const-string/jumbo v4, "run_origin"

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->getRunOrigin()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 464
    const-string v4, "crash"

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->getCrash()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 466
    const-string v4, "jump"

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->getJump()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 468
    const-string/jumbo v4, "user"

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->getUser()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 470
    const-string/jumbo v4, "visible"

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->getVisible()Z

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 472
    const-string v4, "grade"

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->getGrade()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 474
    const-string v4, "avatar"

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->getAvatar()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 480
    :goto_0
    return-object v2

    .line 476
    :catch_0
    move-exception v1

    .line 477
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getAvatar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->runAvatar:Ljava/lang/String;

    return-object v0
.end method

.method public getCaptures()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/core/academy/model/ARAcademyRunCapture;",
            ">;"
        }
    .end annotation

    .prologue
    .line 384
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->runCaptures:Ljava/util/List;

    return-object v0
.end method

.method public getControllerApplication()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->runControllerApplication:Ljava/lang/String;

    return-object v0
.end method

.method public getControllerModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->runControllerModel:Ljava/lang/String;

    return-object v0
.end method

.method public getCrash()I
    .locals 1

    .prologue
    .line 352
    iget v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->runCrash:I

    return v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->runDate:Ljava/lang/String;

    return-object v0
.end method

.method public getDummyDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->runDummyDate:Ljava/util/Date;

    return-object v0
.end method

.method public getGpsAvailable()Z
    .locals 1

    .prologue
    .line 304
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->runGpsAvailable:Z

    return v0
.end method

.method public getGpsLatitude()D
    .locals 2

    .prologue
    .line 312
    iget-wide v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->runGpsLatitude:D

    return-wide v0
.end method

.method public getGpsLongitude()D
    .locals 2

    .prologue
    .line 320
    iget-wide v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->runGpsLongitude:D

    return-wide v0
.end method

.method public getGrade()I
    .locals 1

    .prologue
    .line 400
    iget v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->runGrade:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->runId:I

    return v0
.end method

.method public getJump()I
    .locals 1

    .prologue
    .line 360
    iget v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->runJump:I

    return v0
.end method

.method public getProductId()I
    .locals 1

    .prologue
    .line 256
    iget v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->runProductId:I

    return v0
.end method

.method public getProductStyle()I
    .locals 1

    .prologue
    .line 296
    iget v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->runProductStyle:I

    return v0
.end method

.method public getRunOrigin()I
    .locals 1

    .prologue
    .line 344
    iget v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->runRunOrigin:I

    return v0
.end method

.method public getRunTime()I
    .locals 1

    .prologue
    .line 328
    iget v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->runRunTime:I

    return v0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->runSerialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalRunTime()I
    .locals 1

    .prologue
    .line 336
    iget v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->runTotalRunTime:I

    return v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->runUser:Ljava/lang/String;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->runUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getVideos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/core/academy/model/ARAcademyRunVideo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 376
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->runVideos:Ljava/util/List;

    return-object v0
.end method

.method public getVisible()Z
    .locals 1

    .prologue
    .line 392
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->runVisible:Z

    return v0
.end method

.method public parseDate()Ljava/util/Date;
    .locals 6

    .prologue
    .line 247
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyyMMddHHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 249
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    :try_start_0
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->runDate:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 251
    :goto_0
    return-object v2

    .line 250
    :catch_0
    move-exception v0

    .line 251
    .local v0, "e":Ljava/text/ParseException;
    new-instance v2, Ljava/util/Date;

    const-wide/16 v4, 0x0

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    goto :goto_0
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0
    .param p1, "avatar"    # Ljava/lang/String;

    .prologue
    .line 412
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->runAvatar:Ljava/lang/String;

    .line 413
    return-void
.end method

.method public setCaptures(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/parrot/freeflight/core/academy/model/ARAcademyRunCapture;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 388
    .local p1, "runCaptures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/freeflight/core/academy/model/ARAcademyRunCapture;>;"
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->runCaptures:Ljava/util/List;

    .line 389
    return-void
.end method

.method public setControllerApplication(Ljava/lang/String;)V
    .locals 0
    .param p1, "controllerApplication"    # Ljava/lang/String;

    .prologue
    .line 292
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->runControllerApplication:Ljava/lang/String;

    .line 293
    return-void
.end method

.method public setControllerModel(Ljava/lang/String;)V
    .locals 0
    .param p1, "controllerModel"    # Ljava/lang/String;

    .prologue
    .line 284
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->runControllerModel:Ljava/lang/String;

    .line 285
    return-void
.end method

.method public setCrash(I)V
    .locals 0
    .param p1, "crash"    # I

    .prologue
    .line 356
    iput p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->runCrash:I

    .line 357
    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->runDate:Ljava/lang/String;

    .line 244
    return-void
.end method

.method public setDummyDate(Ljava/util/Date;)V
    .locals 0
    .param p1, "dummyDate"    # Ljava/util/Date;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->runDummyDate:Ljava/util/Date;

    .line 228
    return-void
.end method

.method public setGpsAvailable(Z)V
    .locals 0
    .param p1, "gpsAvailable"    # Z

    .prologue
    .line 308
    iput-boolean p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->runGpsAvailable:Z

    .line 309
    return-void
.end method

.method public setGpsLatitude(D)V
    .locals 1
    .param p1, "gpsLatitude"    # D

    .prologue
    .line 316
    iput-wide p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->runGpsLatitude:D

    .line 317
    return-void
.end method

.method public setGpsLongitude(D)V
    .locals 1
    .param p1, "gpsLongitude"    # D

    .prologue
    .line 324
    iput-wide p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->runGpsLongitude:D

    .line 325
    return-void
.end method

.method public setGrade(I)V
    .locals 0
    .param p1, "grade"    # I

    .prologue
    .line 404
    iput p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->runGrade:I

    .line 405
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 235
    iput p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->runId:I

    .line 236
    return-void
.end method

.method public setJump(I)V
    .locals 0
    .param p1, "jump"    # I

    .prologue
    .line 364
    iput p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->runJump:I

    .line 365
    return-void
.end method

.method public setProductId(I)V
    .locals 0
    .param p1, "productId"    # I

    .prologue
    .line 260
    iput p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->runProductId:I

    .line 261
    return-void
.end method

.method public setProductStyle(I)V
    .locals 0
    .param p1, "productStyle"    # I

    .prologue
    .line 300
    iput p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->runProductStyle:I

    .line 301
    return-void
.end method

.method public setRunOrigin(I)V
    .locals 0
    .param p1, "runOrigin"    # I

    .prologue
    .line 348
    iput p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->runRunOrigin:I

    .line 349
    return-void
.end method

.method public setRunTime(I)V
    .locals 0
    .param p1, "runTime"    # I

    .prologue
    .line 332
    iput p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->runRunTime:I

    .line 333
    return-void
.end method

.method public setSerialNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "serialNumber"    # Ljava/lang/String;

    .prologue
    .line 268
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->runSerialNumber:Ljava/lang/String;

    .line 269
    return-void
.end method

.method public setTotalRunTime(I)V
    .locals 0
    .param p1, "totalRunTime"    # I

    .prologue
    .line 340
    iput p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->runTotalRunTime:I

    .line 341
    return-void
.end method

.method public setUser(Ljava/lang/String;)V
    .locals 0
    .param p1, "user"    # Ljava/lang/String;

    .prologue
    .line 372
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->runUser:Ljava/lang/String;

    .line 373
    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 276
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->runUuid:Ljava/lang/String;

    .line 277
    return-void
.end method

.method public setVideos(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/parrot/freeflight/core/academy/model/ARAcademyRunVideo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 380
    .local p1, "runVideos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/freeflight/core/academy/model/ARAcademyRunVideo;>;"
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->runVideos:Ljava/util/List;

    .line 381
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 396
    iput-boolean p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->runVisible:Z

    .line 397
    return-void
.end method
