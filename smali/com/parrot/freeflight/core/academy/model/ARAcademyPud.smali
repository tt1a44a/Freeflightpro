.class public Lcom/parrot/freeflight/core/academy/model/ARAcademyPud;
.super Ljava/lang/Object;
.source "ARAcademyPud.java"


# static fields
.field private static final ARACADEMY_PUD_CONTROLLER_APPLICATION:Ljava/lang/String; = "controller_application"

.field private static final ARACADEMY_PUD_CONTROLLER_MODEL:Ljava/lang/String; = "controller_model"

.field private static final ARACADEMY_PUD_CRASH:Ljava/lang/String; = "crash"

.field private static final ARACADEMY_PUD_DATE:Ljava/lang/String; = "date"

.field private static final ARACADEMY_PUD_DETAILS_HEADERS:Ljava/lang/String; = "details_headers"

.field private static final ARACADEMY_PUD_GPS_AVAILABLE:Ljava/lang/String; = "gps_available"

.field private static final ARACADEMY_PUD_GPS_LATITUDE:Ljava/lang/String; = "gps_latitude"

.field private static final ARACADEMY_PUD_GPS_LONGITUDE:Ljava/lang/String; = "gps_longitude"

.field private static final ARACADEMY_PUD_HARDWARE_VERSION:Ljava/lang/String; = "hardware_version"

.field private static final ARACADEMY_PUD_JUMP:Ljava/lang/String; = "jump"

.field private static final ARACADEMY_PUD_NULL:Ljava/lang/String; = "null"

.field private static final ARACADEMY_PUD_PRODUCT_ACCESSORY:Ljava/lang/String; = "product_accessory"

.field private static final ARACADEMY_PUD_PRODUCT_ID:Ljava/lang/String; = "product_id"

.field private static final ARACADEMY_PUD_PRODUCT_NAME:Ljava/lang/String; = "product_name"

.field private static final ARACADEMY_PUD_PRODUCT_STYLE:Ljava/lang/String; = "product_style"

.field private static final ARACADEMY_PUD_RUN_ORIGIN:Ljava/lang/String; = "run_origin"

.field private static final ARACADEMY_PUD_RUN_TIME:Ljava/lang/String; = "run_time"

.field private static final ARACADEMY_PUD_SERIAL_NUMBER:Ljava/lang/String; = "serial_number"

.field private static final ARACADEMY_PUD_SOFTWARE_VERSION:Ljava/lang/String; = "software_version"

.field private static final ARACADEMY_PUD_TAG:Ljava/lang/String; = "ARAcademyPud"

.field private static final ARACADEMY_PUD_TOTAL_RUN_TIME:Ljava/lang/String; = "total_run_time"

.field private static final ARACADEMY_PUD_UUID:Ljava/lang/String; = "uuid"

.field private static final ARACADEMY_PUD_VERSION:Ljava/lang/String; = "version"


# instance fields
.field protected controllerApplication:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "controller_application"
    .end annotation
.end field

.field protected controllerModel:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "controller_model"
    .end annotation
.end field

.field protected crash:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "crash"
    .end annotation
.end field

.field protected date:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "date"
    .end annotation
.end field

.field protected detailsHeaders:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "details_headers"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader;",
            ">;"
        }
    .end annotation
.end field

.field protected gpsAvailable:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gps_available"
    .end annotation
.end field

.field protected gpsLatitude:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gps_latitude"
    .end annotation
.end field

.field protected gpsLongitude:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gps_longitude"
    .end annotation
.end field

.field protected hardwareVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "hardware_version"
    .end annotation
.end field

.field protected jump:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "jump"
    .end annotation
.end field

.field protected productAccessory:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "product_accessory"
    .end annotation
.end field

.field protected productId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "product_id"
    .end annotation
.end field

.field protected productName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "product_name"
    .end annotation
.end field

.field protected productStyle:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "product_style"
    .end annotation
.end field

.field protected runOrigin:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "run_origin"
    .end annotation
.end field

.field protected runTime:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "run_time"
    .end annotation
.end field

.field protected serialNumber:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "serial_number"
    .end annotation
.end field

.field protected softwareVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "software_version"
    .end annotation
.end field

.field protected totalRunTime:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "total_run_time"
    .end annotation
.end field

.field protected uuid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "uuid"
    .end annotation
.end field

.field protected version:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "version"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getControllerApplication()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPud;->controllerApplication:Ljava/lang/String;

    return-object v0
.end method

.method public getControllerModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPud;->controllerModel:Ljava/lang/String;

    return-object v0
.end method

.method public getCrash()I
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPud;->crash:I

    return v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPud;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getDetailsHeaders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader;",
            ">;"
        }
    .end annotation

    .prologue
    .line 245
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPud;->detailsHeaders:Ljava/util/List;

    return-object v0
.end method

.method public getGpsAvailable()Z
    .locals 1

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPud;->gpsAvailable:Z

    return v0
.end method

.method public getGpsLatitude()D
    .locals 2

    .prologue
    .line 197
    iget-wide v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPud;->gpsLatitude:D

    return-wide v0
.end method

.method public getGpsLongitude()D
    .locals 2

    .prologue
    .line 205
    iget-wide v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPud;->gpsLongitude:D

    return-wide v0
.end method

.method public getHardwareVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPud;->hardwareVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getJump()I
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPud;->jump:I

    return v0
.end method

.method public getProductAccessory()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPud;->productAccessory:I

    return v0
.end method

.method public getProductId()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPud;->productId:I

    return v0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPud;->productName:Ljava/lang/String;

    return-object v0
.end method

.method public getProductStyle()I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPud;->productStyle:I

    return v0
.end method

.method public getRunOrigin()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPud;->runOrigin:I

    return v0
.end method

.method public getRunTime()I
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPud;->runTime:I

    return v0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPud;->serialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getSoftwareVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPud;->softwareVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalRunTime()I
    .locals 1

    .prologue
    .line 237
    iget v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPud;->totalRunTime:I

    return v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPud;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPud;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setControllerApplication(Ljava/lang/String;)V
    .locals 0
    .param p1, "controllerApplication"    # Ljava/lang/String;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPud;->controllerApplication:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public setControllerModel(Ljava/lang/String;)V
    .locals 0
    .param p1, "controllerModel"    # Ljava/lang/String;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPud;->controllerModel:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public setCrash(I)V
    .locals 0
    .param p1, "crash"    # I

    .prologue
    .line 217
    iput p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPud;->crash:I

    .line 218
    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPud;->date:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setDetailsHeaders(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 249
    .local p1, "detailsHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader;>;"
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPud;->detailsHeaders:Ljava/util/List;

    .line 250
    return-void
.end method

.method public setGpsAvailable(Z)V
    .locals 0
    .param p1, "gpsAvailable"    # Z

    .prologue
    .line 193
    iput-boolean p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPud;->gpsAvailable:Z

    .line 194
    return-void
.end method

.method public setGpsLatitude(D)V
    .locals 1
    .param p1, "gpsLatitude"    # D

    .prologue
    .line 201
    iput-wide p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPud;->gpsLatitude:D

    .line 202
    return-void
.end method

.method public setGpsLongitude(D)V
    .locals 1
    .param p1, "gpsLongitude"    # D

    .prologue
    .line 209
    iput-wide p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPud;->gpsLongitude:D

    .line 210
    return-void
.end method

.method public setHardwareVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "hardwareVersion"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPud;->hardwareVersion:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setJump(I)V
    .locals 0
    .param p1, "jump"    # I

    .prologue
    .line 225
    iput p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPud;->jump:I

    .line 226
    return-void
.end method

.method public setProductAccessory(I)V
    .locals 0
    .param p1, "productAccessory"    # I

    .prologue
    .line 185
    iput p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPud;->productAccessory:I

    .line 186
    return-void
.end method

.method public setProductId(I)V
    .locals 0
    .param p1, "productId"    # I

    .prologue
    .line 121
    iput p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPud;->productId:I

    .line 122
    return-void
.end method

.method public setProductName(Ljava/lang/String;)V
    .locals 0
    .param p1, "productName"    # Ljava/lang/String;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPud;->productName:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setProductStyle(I)V
    .locals 0
    .param p1, "productStyle"    # I

    .prologue
    .line 177
    iput p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPud;->productStyle:I

    .line 178
    return-void
.end method

.method public setRunOrigin(I)V
    .locals 0
    .param p1, "runOrigin"    # I

    .prologue
    .line 153
    iput p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPud;->runOrigin:I

    .line 154
    return-void
.end method

.method public setRunTime(I)V
    .locals 0
    .param p1, "runTime"    # I

    .prologue
    .line 233
    iput p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPud;->runTime:I

    .line 234
    return-void
.end method

.method public setSerialNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "serialNumber"    # Ljava/lang/String;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPud;->serialNumber:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setSoftwareVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "softwareVersion"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPud;->softwareVersion:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setTotalRunTime(I)V
    .locals 0
    .param p1, "totalRunTime"    # I

    .prologue
    .line 241
    iput p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPud;->totalRunTime:I

    .line 242
    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPud;->uuid:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPud;->version:Ljava/lang/String;

    .line 90
    return-void
.end method
