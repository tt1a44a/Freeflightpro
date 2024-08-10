.class public Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;
.super Ljava/lang/Object;
.source "ARAcademyRunDetails.java"


# static fields
.field private static final ARACADEMY_RUNDETAILS_CONTROLLER_APPLICATION:Ljava/lang/String; = "controller_application"

.field private static final ARACADEMY_RUNDETAILS_CONTROLLER_MODEL:Ljava/lang/String; = "controller_model"

.field private static final ARACADEMY_RUNDETAILS_CRASH:Ljava/lang/String; = "crash"

.field private static final ARACADEMY_RUNDETAILS_DATE:Ljava/lang/String; = "date"

.field private static final ARACADEMY_RUNDETAILS_DETAILS_DATA:Ljava/lang/String; = "details_data"

.field private static final ARACADEMY_RUNDETAILS_GPS_AVAILABLE:Ljava/lang/String; = "gps_available"

.field private static final ARACADEMY_RUNDETAILS_GPS_LATITUDE:Ljava/lang/String; = "gps_latitude"

.field private static final ARACADEMY_RUNDETAILS_GPS_LONGITUDE:Ljava/lang/String; = "gps_longitude"

.field private static final ARACADEMY_RUNDETAILS_HARDWARE_VERSION:Ljava/lang/String; = "hardware_version"

.field private static final ARACADEMY_RUNDETAILS_JUMP:Ljava/lang/String; = "jump"

.field private static final ARACADEMY_RUNDETAILS_NULL:Ljava/lang/String; = "null"

.field private static final ARACADEMY_RUNDETAILS_PRODUCT_ACCESSORY:Ljava/lang/String; = "product_accessory"

.field private static final ARACADEMY_RUNDETAILS_PRODUCT_ID:Ljava/lang/String; = "product_id"

.field private static final ARACADEMY_RUNDETAILS_PRODUCT_NAME:Ljava/lang/String; = "product_name"

.field private static final ARACADEMY_RUNDETAILS_PRODUCT_STYLE:Ljava/lang/String; = "product_style"

.field private static final ARACADEMY_RUNDETAILS_RUN_TIME:Ljava/lang/String; = "run_time"

.field private static final ARACADEMY_RUNDETAILS_SERIAL_NUMBER:Ljava/lang/String; = "serial_number"

.field private static final ARACADEMY_RUNDETAILS_SOFTWARE_VERSION:Ljava/lang/String; = "software_version"

.field private static final ARACADEMY_RUNDETAILS_TAG:Ljava/lang/String; = "ARAcademyRunDetails"

.field private static final ARACADEMY_RUNDETAILS_TOTAL_RUN_TIME:Ljava/lang/String; = "total_run_time"

.field private static final ARACADEMY_RUNDETAILS_UUID:Ljava/lang/String; = "uuid"

.field private static final ARACADEMY_RUNDETAILS_VERSION:Ljava/lang/String; = "version"


# instance fields
.field protected runDetailsControllerApplication:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "controller_application"
    .end annotation
.end field

.field protected runDetailsControllerModel:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "controller_model"
    .end annotation
.end field

.field protected runDetailsCrash:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "crash"
    .end annotation
.end field

.field protected runDetailsDate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "date"
    .end annotation
.end field

.field protected runDetailsDetailsData:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "details_data"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetailData;",
            ">;"
        }
    .end annotation
.end field

.field protected runDetailsGpsAvailable:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gps_available"
    .end annotation
.end field

.field protected runDetailsGpsLatitude:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gps_latitude"
    .end annotation
.end field

.field protected runDetailsGpsLongitude:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gps_longitude"
    .end annotation
.end field

.field protected runDetailsHardwareVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "hardware_version"
    .end annotation
.end field

.field protected runDetailsJump:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "jump"
    .end annotation
.end field

.field protected runDetailsProductAccessory:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "product_accessory"
    .end annotation
.end field

.field protected runDetailsProductId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "product_id"
    .end annotation
.end field

.field protected runDetailsProductName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "product_name"
    .end annotation
.end field

.field protected runDetailsProductStyle:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "product_style"
    .end annotation
.end field

.field protected runDetailsRunTime:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "run_time"
    .end annotation
.end field

.field protected runDetailsSerialNumber:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "serial_number"
    .end annotation
.end field

.field protected runDetailsSoftwareVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "software_version"
    .end annotation
.end field

.field protected runDetailsTotalRunTime:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "total_run_time"
    .end annotation
.end field

.field protected runDetailsUuid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "uuid"
    .end annotation
.end field

.field protected runDetailsVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "version"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->runDetailsVersion:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->runDetailsDate:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->runDetailsSerialNumber:Ljava/lang/String;

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->runDetailsProductName:Ljava/lang/String;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->runDetailsUuid:Ljava/lang/String;

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->runDetailsControllerModel:Ljava/lang/String;

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->runDetailsControllerApplication:Ljava/lang/String;

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->runDetailsHardwareVersion:Ljava/lang/String;

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->runDetailsSoftwareVersion:Ljava/lang/String;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->runDetailsDetailsData:Ljava/util/List;

    .line 90
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "object"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v3, ""

    iput-object v3, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->runDetailsVersion:Ljava/lang/String;

    .line 46
    const-string v3, ""

    iput-object v3, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->runDetailsDate:Ljava/lang/String;

    .line 50
    const-string v3, ""

    iput-object v3, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->runDetailsSerialNumber:Ljava/lang/String;

    .line 52
    const-string v3, ""

    iput-object v3, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->runDetailsProductName:Ljava/lang/String;

    .line 54
    const-string v3, ""

    iput-object v3, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->runDetailsUuid:Ljava/lang/String;

    .line 56
    const-string v3, ""

    iput-object v3, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->runDetailsControllerModel:Ljava/lang/String;

    .line 58
    const-string v3, ""

    iput-object v3, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->runDetailsControllerApplication:Ljava/lang/String;

    .line 78
    const-string v3, ""

    iput-object v3, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->runDetailsHardwareVersion:Ljava/lang/String;

    .line 80
    const-string v3, ""

    iput-object v3, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->runDetailsSoftwareVersion:Ljava/lang/String;

    .line 82
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->runDetailsDetailsData:Ljava/util/List;

    .line 99
    const-string/jumbo v3, "version"

    invoke-static {p1, v3}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 100
    const-string/jumbo v3, "version"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->runDetailsVersion:Ljava/lang/String;

    .line 103
    :cond_0
    const-string v3, "date"

    invoke-static {p1, v3}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 104
    const-string v3, "date"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->runDetailsDate:Ljava/lang/String;

    .line 107
    :cond_1
    const-string/jumbo v3, "product_id"

    invoke-static {p1, v3}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 108
    const-string/jumbo v3, "product_id"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->runDetailsProductId:I

    .line 111
    :cond_2
    const-string/jumbo v3, "serial_number"

    invoke-static {p1, v3}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 112
    const-string/jumbo v3, "serial_number"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->runDetailsSerialNumber:Ljava/lang/String;

    .line 115
    :cond_3
    const-string/jumbo v3, "product_name"

    invoke-static {p1, v3}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 116
    const-string/jumbo v3, "product_name"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->runDetailsProductName:Ljava/lang/String;

    .line 119
    :cond_4
    const-string/jumbo v3, "uuid"

    invoke-static {p1, v3}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 120
    const-string/jumbo v3, "uuid"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->runDetailsUuid:Ljava/lang/String;

    .line 123
    :cond_5
    const-string v3, "controller_model"

    invoke-static {p1, v3}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 124
    const-string v3, "controller_model"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->runDetailsControllerModel:Ljava/lang/String;

    .line 127
    :cond_6
    const-string v3, "controller_application"

    invoke-static {p1, v3}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 128
    const-string v3, "controller_application"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->runDetailsControllerApplication:Ljava/lang/String;

    .line 131
    :cond_7
    const-string/jumbo v3, "product_accessory"

    invoke-static {p1, v3}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 132
    const-string/jumbo v3, "product_accessory"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->runDetailsProductAccessory:I

    .line 135
    :cond_8
    const-string/jumbo v3, "product_style"

    invoke-static {p1, v3}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 136
    const-string/jumbo v3, "product_style"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->runDetailsProductStyle:I

    .line 139
    :cond_9
    const-string v3, "gps_available"

    invoke-static {p1, v3}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 140
    const-string v3, "gps_available"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->runDetailsGpsAvailable:Z

    .line 143
    :cond_a
    const-string v3, "gps_latitude"

    invoke-static {p1, v3}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 144
    const-string v3, "gps_latitude"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->runDetailsGpsLatitude:D

    .line 147
    :cond_b
    const-string v3, "gps_longitude"

    invoke-static {p1, v3}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 148
    const-string v3, "gps_longitude"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->runDetailsGpsLongitude:D

    .line 151
    :cond_c
    const-string v3, "crash"

    invoke-static {p1, v3}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 152
    const-string v3, "crash"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->runDetailsCrash:I

    .line 155
    :cond_d
    const-string v3, "jump"

    invoke-static {p1, v3}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 156
    const-string v3, "jump"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->runDetailsJump:I

    .line 159
    :cond_e
    const-string/jumbo v3, "run_time"

    invoke-static {p1, v3}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 160
    const-string/jumbo v3, "run_time"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->runDetailsRunTime:I

    .line 163
    :cond_f
    const-string/jumbo v3, "total_run_time"

    invoke-static {p1, v3}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 164
    const-string/jumbo v3, "total_run_time"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->runDetailsTotalRunTime:I

    .line 167
    :cond_10
    const-string v3, "hardware_version"

    invoke-static {p1, v3}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 168
    const-string v3, "hardware_version"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->runDetailsHardwareVersion:Ljava/lang/String;

    .line 171
    :cond_11
    const-string/jumbo v3, "software_version"

    invoke-static {p1, v3}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 172
    const-string/jumbo v3, "software_version"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->runDetailsSoftwareVersion:Ljava/lang/String;

    .line 175
    :cond_12
    const-string v3, "details_data"

    invoke-static {p1, v3}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 176
    const-string v3, "details_headers"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 177
    .local v0, "evolHeadersArray":Lorg/json/JSONArray;
    const-string v3, "details_data"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 179
    .local v2, "jsonArray":Lorg/json/JSONArray;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->runDetailsDetailsData:Ljava/util/List;

    .line 180
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_13

    .line 181
    iget-object v3, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->runDetailsDetailsData:Ljava/util/List;

    new-instance v4, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetailData;

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetailData;-><init>(Lorg/json/JSONArray;Lorg/json/JSONArray;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 185
    .end local v0    # "evolHeadersArray":Lorg/json/JSONArray;
    .end local v1    # "i":I
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    :cond_13
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
    .line 348
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null"

    .line 349
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 348
    :goto_0
    return v0

    .line 349
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getControllerApplication()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->runDetailsControllerApplication:Ljava/lang/String;

    return-object v0
.end method

.method public getControllerModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->runDetailsControllerModel:Ljava/lang/String;

    return-object v0
.end method

.method public getCrash()I
    .locals 1

    .prologue
    .line 292
    iget v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->runDetailsCrash:I

    return v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->runDetailsDate:Ljava/lang/String;

    return-object v0
.end method

.method public getDetailsData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetailData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 340
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->runDetailsDetailsData:Ljava/util/List;

    return-object v0
.end method

.method public getGpsAvailable()Z
    .locals 1

    .prologue
    .line 268
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->runDetailsGpsAvailable:Z

    return v0
.end method

.method public getGpsLatitude()D
    .locals 2

    .prologue
    .line 276
    iget-wide v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->runDetailsGpsLatitude:D

    return-wide v0
.end method

.method public getGpsLongitude()D
    .locals 2

    .prologue
    .line 284
    iget-wide v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->runDetailsGpsLongitude:D

    return-wide v0
.end method

.method public getHardwareVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->runDetailsHardwareVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getJump()I
    .locals 1

    .prologue
    .line 300
    iget v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->runDetailsJump:I

    return v0
.end method

.method public getProductAccessory()I
    .locals 1

    .prologue
    .line 252
    iget v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->runDetailsProductAccessory:I

    return v0
.end method

.method public getProductId()I
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->runDetailsProductId:I

    return v0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->runDetailsProductName:Ljava/lang/String;

    return-object v0
.end method

.method public getProductStyle()I
    .locals 1

    .prologue
    .line 260
    iget v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->runDetailsProductStyle:I

    return v0
.end method

.method public getRunTime()I
    .locals 1

    .prologue
    .line 308
    iget v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->runDetailsRunTime:I

    return v0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->runDetailsSerialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getSoftwareVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->runDetailsSoftwareVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalRunTime()I
    .locals 1

    .prologue
    .line 316
    iget v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->runDetailsTotalRunTime:I

    return v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->runDetailsUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->runDetailsVersion:Ljava/lang/String;

    return-object v0
.end method

.method public setControllerApplication(Ljava/lang/String;)V
    .locals 0
    .param p1, "controllerApplication"    # Ljava/lang/String;

    .prologue
    .line 248
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->runDetailsControllerApplication:Ljava/lang/String;

    .line 249
    return-void
.end method

.method public setControllerModel(Ljava/lang/String;)V
    .locals 0
    .param p1, "controllerModel"    # Ljava/lang/String;

    .prologue
    .line 240
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->runDetailsControllerModel:Ljava/lang/String;

    .line 241
    return-void
.end method

.method public setCrash(I)V
    .locals 0
    .param p1, "crash"    # I

    .prologue
    .line 296
    iput p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->runDetailsCrash:I

    .line 297
    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->runDetailsDate:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public setDetailsData(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetailData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 344
    .local p1, "detailData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetailData;>;"
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->runDetailsDetailsData:Ljava/util/List;

    .line 345
    return-void
.end method

.method public setGpsAvailable(Z)V
    .locals 0
    .param p1, "gpsAvailable"    # Z

    .prologue
    .line 272
    iput-boolean p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->runDetailsGpsAvailable:Z

    .line 273
    return-void
.end method

.method public setGpsLatitude(D)V
    .locals 1
    .param p1, "gpsLatitude"    # D

    .prologue
    .line 280
    iput-wide p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->runDetailsGpsLatitude:D

    .line 281
    return-void
.end method

.method public setGpsLongitude(D)V
    .locals 1
    .param p1, "gpsLongitude"    # D

    .prologue
    .line 288
    iput-wide p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->runDetailsGpsLongitude:D

    .line 289
    return-void
.end method

.method public setHardwareVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "hardwareVersion"    # Ljava/lang/String;

    .prologue
    .line 328
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->runDetailsHardwareVersion:Ljava/lang/String;

    .line 329
    return-void
.end method

.method public setJump(I)V
    .locals 0
    .param p1, "jump"    # I

    .prologue
    .line 304
    iput p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->runDetailsJump:I

    .line 305
    return-void
.end method

.method public setProductAccessory(I)V
    .locals 0
    .param p1, "productAccessory"    # I

    .prologue
    .line 256
    iput p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->runDetailsProductAccessory:I

    .line 257
    return-void
.end method

.method public setProductId(I)V
    .locals 0
    .param p1, "productId"    # I

    .prologue
    .line 208
    iput p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->runDetailsProductId:I

    .line 209
    return-void
.end method

.method public setProductName(Ljava/lang/String;)V
    .locals 0
    .param p1, "productName"    # Ljava/lang/String;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->runDetailsProductName:Ljava/lang/String;

    .line 225
    return-void
.end method

.method public setProductStyle(I)V
    .locals 0
    .param p1, "productStyle"    # I

    .prologue
    .line 264
    iput p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->runDetailsProductStyle:I

    .line 265
    return-void
.end method

.method public setRunTime(I)V
    .locals 0
    .param p1, "runTime"    # I

    .prologue
    .line 312
    iput p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->runDetailsRunTime:I

    .line 313
    return-void
.end method

.method public setSerialNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "serialNumber"    # Ljava/lang/String;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->runDetailsSerialNumber:Ljava/lang/String;

    .line 217
    return-void
.end method

.method public setSoftwareVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "softwareVersion"    # Ljava/lang/String;

    .prologue
    .line 336
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->runDetailsSoftwareVersion:Ljava/lang/String;

    .line 337
    return-void
.end method

.method public setTotalRunTime(I)V
    .locals 0
    .param p1, "totalRunTime"    # I

    .prologue
    .line 320
    iput p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->runDetailsTotalRunTime:I

    .line 321
    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->runDetailsUuid:Ljava/lang/String;

    .line 233
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->runDetailsVersion:Ljava/lang/String;

    .line 193
    return-void
.end method
