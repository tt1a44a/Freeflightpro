.class public Lcom/parrot/freeflight/core/academy/uploader/PudParser;
.super Ljava/lang/Object;
.source "PudParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;,
        Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;,
        Lcom/parrot/freeflight/core/academy/uploader/PudParser$GPS_AVAILABLE_FIELD_ENUM;,
        Lcom/parrot/freeflight/core/academy/uploader/PudParser$ParsingData;
    }
.end annotation


# static fields
.field private static final ARACADEMY_UPLOADER_GPS_INVALID_POSITION:D = 500.0

.field private static final TIME_MAX_INTERVAL:I = 0x2710


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildAcademyJson(Lcom/parrot/freeflight/core/academy/model/ARAcademyPud;Lcom/google/gson/JsonArray;Lcom/google/gson/JsonArray;Lcom/parrot/freeflight/core/academy/uploader/PudParser$ParsingData;)Lcom/google/gson/JsonObject;
    .locals 8
    .param p0, "pud"    # Lcom/parrot/freeflight/core/academy/model/ARAcademyPud;
    .param p1, "detailsData"    # Lcom/google/gson/JsonArray;
    .param p2, "detailsHeaderNames"    # Lcom/google/gson/JsonArray;
    .param p3, "parsingData"    # Lcom/parrot/freeflight/core/academy/uploader/PudParser$ParsingData;

    .prologue
    .line 344
    new-instance v2, Lcom/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 346
    .local v2, "productJsonObject":Lcom/google/gson/JsonObject;
    sget-object v4, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->FIELD_VERSION:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

    invoke-virtual {v4}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/academy/model/ARAcademyPud;->getVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    sget-object v4, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->FIELD_SOFTWARE_VERSION:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

    invoke-virtual {v4}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/academy/model/ARAcademyPud;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    sget-object v4, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->FIELD_HARDWARE_VERSION:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

    invoke-virtual {v4}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/academy/model/ARAcademyPud;->getHardwareVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    sget-object v4, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->FIELD_UUID:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

    invoke-virtual {v4}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/academy/model/ARAcademyPud;->getUuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    sget-object v4, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->FIELD_RUN_ORIGIN:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

    invoke-virtual {v4}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/academy/model/ARAcademyPud;->getRunOrigin()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 351
    sget-object v4, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->FIELD_CONTROLLER_MODEL:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

    invoke-virtual {v4}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/academy/model/ARAcademyPud;->getControllerModel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    sget-object v4, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->FIELD_CONTROLLER_APPLICATION:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

    invoke-virtual {v4}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/academy/model/ARAcademyPud;->getControllerApplication()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    sget-object v4, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->FIELD_PRODUCT_STYLE:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

    invoke-virtual {v4}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/academy/model/ARAcademyPud;->getProductStyle()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 354
    sget-object v4, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->FIELD_PRODUCT_ACCESSORY:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

    invoke-virtual {v4}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/academy/model/ARAcademyPud;->getProductAccessory()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 355
    sget-object v4, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->FIELD_SERIAL_NUMBER:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

    invoke-virtual {v4}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/academy/model/ARAcademyPud;->getSerialNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    sget-object v4, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->FIELD_PRODUCT_ID:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

    invoke-virtual {v4}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/academy/model/ARAcademyPud;->getProductId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 357
    invoke-virtual {p0}, Lcom/parrot/freeflight/core/academy/model/ARAcademyPud;->getProductId()I

    move-result v4

    invoke-static {v4}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductFromProductID(I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v0

    .line 358
    .local v0, "productEnum":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    invoke-static {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductFamily(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_FAMILY_ENUM;

    move-result-object v1

    .line 359
    .local v1, "productFamily":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_FAMILY_ENUM;
    invoke-static {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductName(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Ljava/lang/String;

    move-result-object v3

    .line 360
    .local v3, "productName":Ljava/lang/String;
    sget-object v4, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->FIELD_PRODUCT_NAME:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

    invoke-virtual {v4}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    sget-object v4, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->FIELD_DATE:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

    invoke-virtual {v4}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/academy/model/ARAcademyPud;->getDate()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    sget-object v4, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->FIELD_GPS_AVAILABLE:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

    invoke-virtual {v4}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->getValue()Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, p3, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ParsingData;->productGpsAvailable:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 363
    sget-object v4, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->FIELD_GPS_LONGITUDE:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

    invoke-virtual {v4}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->getValue()Ljava/lang/String;

    move-result-object v4

    iget-wide v6, p3, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ParsingData;->productGpsLongitude:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 364
    sget-object v4, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->FIELD_GPS_LATITUDE:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

    invoke-virtual {v4}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->getValue()Ljava/lang/String;

    move-result-object v4

    iget-wide v6, p3, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ParsingData;->productGpsLatitude:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 366
    sget-object v4, Lcom/parrot/freeflight/core/academy/uploader/PudParser$1;->$SwitchMap$com$parrot$arsdk$ardiscovery$ARDISCOVERY_PRODUCT_FAMILY_ENUM:[I

    invoke-virtual {v1}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_FAMILY_ENUM;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 376
    :goto_0
    sget-object v4, Lcom/parrot/freeflight/core/academy/uploader/PudParser$1;->$SwitchMap$com$parrot$arsdk$ardiscovery$ARDISCOVERY_PRODUCT_FAMILY_ENUM:[I

    invoke-virtual {v1}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_FAMILY_ENUM;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    .line 384
    :goto_1
    sget-object v4, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_FAMILY_ENUM;->ARDISCOVERY_PRODUCT_FAMILY_JS:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_FAMILY_ENUM;

    if-ne v1, v4, :cond_0

    .line 385
    sget-object v4, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->FIELD_RUN_TIME:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

    invoke-virtual {v4}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->getValue()Ljava/lang/String;

    move-result-object v4

    iget v5, p3, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ParsingData;->time:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 389
    :goto_2
    sget-object v4, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->FIELD_TOTAL_RUN_TIME:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

    invoke-virtual {v4}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->getValue()Ljava/lang/String;

    move-result-object v4

    iget v5, p3, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ParsingData;->time:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 392
    sget-object v4, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;->HEADER_SPEED:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

    invoke-virtual {v4}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/google/gson/JsonArray;->add(Ljava/lang/String;)V

    .line 393
    sget-object v4, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->FIELD_DETAILS_HEADER:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

    invoke-virtual {v4}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, p2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 394
    sget-object v4, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->FIELD_DETAILS_DATA:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

    invoke-virtual {v4}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, p1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 395
    return-object v2

    .line 370
    :pswitch_0
    sget-object v4, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->FIELD_CRASH:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

    invoke-virtual {v4}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->getValue()Ljava/lang/String;

    move-result-object v4

    iget v5, p3, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ParsingData;->crash:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    goto :goto_0

    .line 378
    :pswitch_1
    sget-object v4, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->FIELD_JUMP:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

    invoke-virtual {v4}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->getValue()Ljava/lang/String;

    move-result-object v4

    iget v5, p3, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ParsingData;->jump:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    goto :goto_1

    .line 387
    :cond_0
    sget-object v4, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->FIELD_RUN_TIME:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

    invoke-virtual {v4}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->getValue()Ljava/lang/String;

    move-result-object v4

    iget v5, p3, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ParsingData;->runTime:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    goto :goto_2

    .line 366
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 376
    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_1
    .end packed-switch
.end method

.method private static byteArrayToBoolean([B)Z
    .locals 2
    .param p0, "b"    # [B

    .prologue
    const/4 v0, 0x0

    .line 399
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static byteArrayToInt([B)I
    .locals 3
    .param p0, "bytes"    # [B

    .prologue
    .line 403
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 404
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Byte;->intValue()I

    move-result v0

    .line 410
    :goto_0
    return v0

    .line 406
    :cond_0
    array-length v0, p0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 407
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    goto :goto_0

    .line 409
    :cond_1
    array-length v0, p0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 410
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    goto :goto_0

    .line 412
    :cond_2
    new-instance v0, Ljava/security/InvalidParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parameter should contains 1, 2 or 4 bytes. Contains "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static findControllerGpsPosition(Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader;ZIDZLcom/parrot/freeflight/core/academy/uploader/PudParser$ParsingData;)Z
    .locals 7
    .param p0, "header"    # Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader;
    .param p1, "boolValue"    # Z
    .param p2, "intValue"    # I
    .param p3, "doubleValue"    # D
    .param p5, "isFirstRow"    # Z
    .param p6, "parsingData"    # Lcom/parrot/freeflight/core/academy/uploader/PudParser$ParsingData;

    .prologue
    const-wide v4, 0x407f400000000000L    # 500.0

    .line 246
    const/4 v0, 0x0

    .line 248
    .local v0, "found":Z
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader;->name:Ljava/lang/String;

    invoke-static {v2}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;->getFromValue(Ljava/lang/String;)Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

    move-result-object v1

    .line 249
    .local v1, "headerEnum":Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;
    sget-object v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$1;->$SwitchMap$com$parrot$freeflight$core$academy$uploader$PudParser$GPS_AVAILABLE_FIELD_ENUM:[I

    iget-object v3, p6, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ParsingData;->gpsAvailableField:Lcom/parrot/freeflight/core/academy/uploader/PudParser$GPS_AVAILABLE_FIELD_ENUM;

    invoke-virtual {v3}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$GPS_AVAILABLE_FIELD_ENUM;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 306
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 307
    sget-object v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$1;->$SwitchMap$com$parrot$freeflight$core$academy$uploader$PudParser$ARAcademyPudHeaderEnum:[I

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    .line 323
    :cond_1
    :goto_1
    sget-object v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$1;->$SwitchMap$com$parrot$freeflight$core$academy$uploader$PudParser$GPS_AVAILABLE_FIELD_ENUM:[I

    iget-object v3, p6, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ParsingData;->gpsAvailableField:Lcom/parrot/freeflight/core/academy/uploader/PudParser$GPS_AVAILABLE_FIELD_ENUM;

    invoke-virtual {v3}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$GPS_AVAILABLE_FIELD_ENUM;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_2

    .line 340
    :cond_2
    :goto_2
    :pswitch_0
    return v0

    .line 251
    :pswitch_1
    if-eqz v1, :cond_3

    .line 252
    sget-object v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$1;->$SwitchMap$com$parrot$freeflight$core$academy$uploader$PudParser$ARAcademyPudHeaderEnum:[I

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_3

    .line 265
    :cond_3
    :goto_3
    if-nez p5, :cond_0

    .line 266
    sget-object v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$GPS_AVAILABLE_FIELD_ENUM;->ARACADEMY_UPLOADER_GPS_AVAILABLE_FIELD_NOT_PRESENT:Lcom/parrot/freeflight/core/academy/uploader/PudParser$GPS_AVAILABLE_FIELD_ENUM;

    iput-object v2, p6, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ParsingData;->gpsAvailableField:Lcom/parrot/freeflight/core/academy/uploader/PudParser$GPS_AVAILABLE_FIELD_ENUM;

    goto :goto_0

    .line 254
    :pswitch_2
    iput-boolean p1, p6, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ParsingData;->productGpsAvailable:Z

    .line 255
    if-eqz p1, :cond_4

    .line 256
    sget-object v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$GPS_AVAILABLE_FIELD_ENUM;->ARACADEMY_UPLOADER_GPS_AVAILABLE_FIELD_AVAILABLE:Lcom/parrot/freeflight/core/academy/uploader/PudParser$GPS_AVAILABLE_FIELD_ENUM;

    iput-object v2, p6, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ParsingData;->gpsAvailableField:Lcom/parrot/freeflight/core/academy/uploader/PudParser$GPS_AVAILABLE_FIELD_ENUM;

    goto :goto_3

    .line 258
    :cond_4
    sget-object v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$GPS_AVAILABLE_FIELD_ENUM;->ARACADEMY_UPLOADER_GPS_AVAILABLE_FIELD_PRESENT:Lcom/parrot/freeflight/core/academy/uploader/PudParser$GPS_AVAILABLE_FIELD_ENUM;

    iput-object v2, p6, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ParsingData;->gpsAvailableField:Lcom/parrot/freeflight/core/academy/uploader/PudParser$GPS_AVAILABLE_FIELD_ENUM;

    goto :goto_3

    .line 270
    :pswitch_3
    if-eqz v1, :cond_0

    .line 271
    sget-object v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$1;->$SwitchMap$com$parrot$freeflight$core$academy$uploader$PudParser$ARAcademyPudHeaderEnum:[I

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_4

    goto :goto_0

    .line 273
    :pswitch_4
    cmpl-double v2, p3, v4

    if-eqz v2, :cond_0

    .line 274
    iput-wide p3, p6, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ParsingData;->productGpsLongitude:D

    goto :goto_0

    .line 278
    :pswitch_5
    cmpl-double v2, p3, v4

    if-eqz v2, :cond_0

    .line 279
    iput-wide p3, p6, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ParsingData;->productGpsLatitude:D

    goto :goto_0

    .line 289
    :pswitch_6
    if-eqz v1, :cond_0

    .line 290
    sget-object v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$1;->$SwitchMap$com$parrot$freeflight$core$academy$uploader$PudParser$ARAcademyPudHeaderEnum:[I

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_5

    goto :goto_0

    .line 292
    :pswitch_7
    if-eqz p1, :cond_0

    .line 293
    sget-object v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$GPS_AVAILABLE_FIELD_ENUM;->ARACADEMY_UPLOADER_GPS_AVAILABLE_FIELD_AVAILABLE:Lcom/parrot/freeflight/core/academy/uploader/PudParser$GPS_AVAILABLE_FIELD_ENUM;

    iput-object v2, p6, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ParsingData;->gpsAvailableField:Lcom/parrot/freeflight/core/academy/uploader/PudParser$GPS_AVAILABLE_FIELD_ENUM;

    .line 294
    const/4 v2, 0x1

    iput-boolean v2, p6, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ParsingData;->productGpsAvailable:Z

    goto :goto_0

    .line 309
    :pswitch_8
    cmpl-double v2, p3, v4

    if-eqz v2, :cond_1

    .line 310
    iput-wide p3, p6, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ParsingData;->controllerGpsLongitude:D

    goto :goto_1

    .line 314
    :pswitch_9
    cmpl-double v2, p3, v4

    if-eqz v2, :cond_1

    .line 315
    iput-wide p3, p6, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ParsingData;->controllerGpsLatitude:D

    goto :goto_1

    .line 325
    :pswitch_a
    iget-wide v2, p6, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ParsingData;->productGpsLongitude:D

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_2

    iget-wide v2, p6, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ParsingData;->productGpsLatitude:D

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_2

    .line 326
    iget-wide v2, p6, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ParsingData;->productGpsLongitude:D

    iput-wide v2, p6, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ParsingData;->controllerGpsLongitude:D

    .line 327
    iget-wide v2, p6, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ParsingData;->productGpsLatitude:D

    iput-wide v2, p6, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ParsingData;->controllerGpsLatitude:D

    .line 328
    const/4 v0, 0x1

    goto :goto_2

    .line 332
    :pswitch_b
    iget-wide v2, p6, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ParsingData;->controllerGpsLongitude:D

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_2

    iget-wide v2, p6, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ParsingData;->controllerGpsLatitude:D

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_2

    .line 333
    const/4 v0, 0x1

    goto/16 :goto_2

    .line 249
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_6
    .end packed-switch

    .line 307
    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 323
    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_a
        :pswitch_0
        :pswitch_b
    .end packed-switch

    .line 252
    :pswitch_data_3
    .packed-switch 0x8
        :pswitch_2
    .end packed-switch

    .line 271
    :pswitch_data_4
    .packed-switch 0x9
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 290
    :pswitch_data_5
    .packed-switch 0x8
        :pswitch_7
    .end packed-switch
.end method

.method private static findRunStates(Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader;IDDLcom/parrot/freeflight/core/academy/uploader/PudParser$ParsingData;)V
    .locals 8
    .param p0, "header"    # Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader;
    .param p1, "intValue"    # I
    .param p2, "doubleValue"    # D
    .param p4, "floatValue"    # D
    .param p6, "parsingData"    # Lcom/parrot/freeflight/core/academy/uploader/PudParser$ParsingData;

    .prologue
    .line 187
    iget-object v3, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader;->name:Ljava/lang/String;

    invoke-static {v3}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;->getFromValue(Ljava/lang/String;)Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

    move-result-object v1

    .line 188
    .local v1, "headerEnum":Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;
    if-eqz v1, :cond_0

    .line 189
    sget-object v3, Lcom/parrot/freeflight/core/academy/uploader/PudParser$1;->$SwitchMap$com$parrot$freeflight$core$academy$uploader$PudParser$ARAcademyPudHeaderEnum:[I

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 191
    :pswitch_0
    iput p1, p6, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ParsingData;->time:I

    goto :goto_0

    .line 196
    :pswitch_1
    iget-wide v4, p6, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ParsingData;->speed:D

    mul-double v6, p4, p4

    add-double/2addr v4, v6

    iput-wide v4, p6, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ParsingData;->speed:D

    goto :goto_0

    .line 199
    :pswitch_2
    sget-object v3, Lcom/parrot/freeflight/core/academy/uploader/PudParser$1;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_ARDRONE3_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_ENUM:[I

    invoke-static {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_ENUM;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_ENUM;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    goto :goto_0

    .line 204
    :pswitch_3
    iget v3, p6, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ParsingData;->runTime:I

    iget v4, p6, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ParsingData;->time:I

    iget v5, p6, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ParsingData;->flyingTime:I

    sub-int/2addr v4, v5

    add-int/2addr v3, v4

    iput v3, p6, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ParsingData;->runTime:I

    .line 205
    iget v3, p6, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ParsingData;->time:I

    iput v3, p6, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ParsingData;->flyingTime:I

    goto :goto_0

    .line 212
    :pswitch_4
    invoke-static {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;

    move-result-object v0

    .line 213
    .local v0, "alertState":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;
    sget-object v3, Lcom/parrot/freeflight/core/academy/uploader/PudParser$1;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_ARDRONE3_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM:[I

    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_2

    .line 224
    :cond_1
    :goto_1
    iget-object v3, p6, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ParsingData;->alertState:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;

    if-eq v3, v0, :cond_0

    .line 225
    iput-object v0, p6, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ParsingData;->alertState:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;

    goto :goto_0

    .line 217
    :pswitch_5
    iget-object v3, p6, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ParsingData;->alertState:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;

    if-eq v3, v0, :cond_1

    .line 218
    iget v3, p6, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ParsingData;->crash:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p6, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ParsingData;->crash:I

    goto :goto_1

    .line 229
    .end local v0    # "alertState":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;
    :pswitch_6
    invoke-static {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_ANIMATIONSSTATE_JUMPTYPECHANGED_STATE_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_ANIMATIONSSTATE_JUMPTYPECHANGED_STATE_ENUM;

    move-result-object v2

    .line 230
    .local v2, "jumpType":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_ANIMATIONSSTATE_JUMPTYPECHANGED_STATE_ENUM;
    sget-object v3, Lcom/parrot/freeflight/core/academy/uploader/PudParser$1;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_JUMPINGSUMO_ANIMATIONSSTATE_JUMPTYPECHANGED_STATE_ENUM:[I

    invoke-virtual {v2}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_ANIMATIONSSTATE_JUMPTYPECHANGED_STATE_ENUM;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_3

    .line 237
    :cond_2
    :goto_2
    iget-object v3, p6, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ParsingData;->jumpType:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_ANIMATIONSSTATE_JUMPTYPECHANGED_STATE_ENUM;

    if-eq v3, v2, :cond_0

    .line 238
    iput-object v2, p6, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ParsingData;->jumpType:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_ANIMATIONSSTATE_JUMPTYPECHANGED_STATE_ENUM;

    goto :goto_0

    .line 233
    :pswitch_7
    iget-object v3, p6, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ParsingData;->jumpType:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_ANIMATIONSSTATE_JUMPTYPECHANGED_STATE_ENUM;

    if-eq v3, v2, :cond_2

    .line 234
    iget v3, p6, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ParsingData;->jump:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p6, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ParsingData;->jump:I

    goto :goto_2

    .line 189
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_6
    .end packed-switch

    .line 199
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    .line 213
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    .line 230
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method private static parseBinaryPart([BLjava/util/List;Lcom/parrot/freeflight/core/academy/uploader/PudParser$ParsingData;)Lcom/google/gson/JsonArray;
    .locals 29
    .param p0, "productBinary"    # [B
    .param p2, "parsingData"    # Lcom/parrot/freeflight/core/academy/uploader/PudParser$ParsingData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader;",
            ">;",
            "Lcom/parrot/freeflight/core/academy/uploader/PudParser$ParsingData;",
            ")",
            "Lcom/google/gson/JsonArray;"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, "headerList":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader;>;"
    const/16 v23, 0x0

    .line 83
    .local v23, "index":I
    const/16 v27, 0x0

    .line 84
    .local v27, "stopParsing":Z
    const/4 v14, 0x1

    .line 85
    .local v14, "isFirstLine":Z
    const/16 v21, 0x0

    .line 87
    .local v21, "gpsPositionFound":Z
    sget-object v8, Lcom/parrot/freeflight/core/academy/uploader/PudParser$GPS_AVAILABLE_FIELD_ENUM;->ARACADEMY_UPLOADER_GPS_AVAILABLE_FIELD_MAX:Lcom/parrot/freeflight/core/academy/uploader/PudParser$GPS_AVAILABLE_FIELD_ENUM;

    move-object/from16 v0, p2

    iput-object v8, v0, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ParsingData;->gpsAvailableField:Lcom/parrot/freeflight/core/academy/uploader/PudParser$GPS_AVAILABLE_FIELD_ENUM;

    .line 88
    const/4 v8, 0x0

    move-object/from16 v0, p2

    iput-boolean v8, v0, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ParsingData;->productGpsAvailable:Z

    .line 89
    const-wide v8, 0x407f400000000000L    # 500.0

    move-object/from16 v0, p2

    iput-wide v8, v0, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ParsingData;->productGpsLongitude:D

    .line 90
    const-wide v8, 0x407f400000000000L    # 500.0

    move-object/from16 v0, p2

    iput-wide v8, v0, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ParsingData;->productGpsLatitude:D

    .line 91
    const-wide v8, 0x407f400000000000L    # 500.0

    move-object/from16 v0, p2

    iput-wide v8, v0, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ParsingData;->controllerGpsLongitude:D

    .line 92
    const-wide v8, 0x407f400000000000L    # 500.0

    move-object/from16 v0, p2

    iput-wide v8, v0, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ParsingData;->controllerGpsLatitude:D

    .line 94
    sget-object v8, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;->ARCOMMANDS_ARDRONE3_PILOTINGSTATE_ALERTSTATECHANGED_STATE_MAX:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;

    move-object/from16 v0, p2

    iput-object v8, v0, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ParsingData;->alertState:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;

    .line 95
    sget-object v8, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_ANIMATIONSSTATE_JUMPTYPECHANGED_STATE_ENUM;->ARCOMMANDS_JUMPINGSUMO_ANIMATIONSSTATE_JUMPTYPECHANGED_STATE_MAX:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_ANIMATIONSSTATE_JUMPTYPECHANGED_STATE_ENUM;

    move-object/from16 v0, p2

    iput-object v8, v0, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ParsingData;->jumpType:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_ANIMATIONSSTATE_JUMPTYPECHANGED_STATE_ENUM;

    .line 96
    const/4 v8, 0x0

    move-object/from16 v0, p2

    iput v8, v0, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ParsingData;->time:I

    .line 97
    const/4 v8, 0x0

    move-object/from16 v0, p2

    iput v8, v0, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ParsingData;->flyingTime:I

    .line 98
    const/4 v8, 0x0

    move-object/from16 v0, p2

    iput v8, v0, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ParsingData;->crash:I

    .line 99
    const/4 v8, 0x0

    move-object/from16 v0, p2

    iput v8, v0, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ParsingData;->jump:I

    .line 100
    const/4 v8, 0x0

    move-object/from16 v0, p2

    iput v8, v0, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ParsingData;->runTime:I

    .line 102
    const/16 v24, -0x1

    .line 104
    .local v24, "lastTime":I
    new-instance v18, Lcom/google/gson/JsonArray;

    invoke-direct/range {v18 .. v18}, Lcom/google/gson/JsonArray;-><init>()V

    .line 106
    .local v18, "detailsData":Lcom/google/gson/JsonArray;
    :goto_0
    move-object/from16 v0, p0

    array-length v8, v0

    move/from16 v0, v23

    if-ge v0, v8, :cond_7

    if-nez v27, :cond_7

    .line 107
    new-instance v19, Lcom/google/gson/JsonArray;

    invoke-direct/range {v19 .. v19}, Lcom/google/gson/JsonArray;-><init>()V

    .line 108
    .local v19, "detailsDataSet":Lcom/google/gson/JsonArray;
    const-wide/16 v8, 0x0

    move-object/from16 v0, p2

    iput-wide v8, v0, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ParsingData;->speed:D

    .line 110
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v8

    move/from16 v0, v22

    if-ge v0, v8, :cond_0

    .line 111
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader;

    .line 113
    .local v4, "header":Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader;
    move/from16 v26, v23

    .line 114
    .local v26, "rangeStart":I
    iget v8, v4, Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader;->size:I

    add-int v25, v23, v8

    .line 115
    .local v25, "rangeEnd":I
    move-object/from16 v0, p0

    array-length v8, v0

    move/from16 v0, v26

    if-gt v0, v8, :cond_0

    move-object/from16 v0, p0

    array-length v8, v0

    move/from16 v0, v25

    if-le v0, v8, :cond_2

    .line 173
    .end local v4    # "header":Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader;
    .end local v25    # "rangeEnd":I
    .end local v26    # "rangeStart":I
    :cond_0
    :goto_2
    move-object/from16 v0, p2

    iget-wide v8, v0, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ParsingData;->speed:D

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    move-object/from16 v0, p2

    iput-wide v8, v0, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ParsingData;->speed:D

    .line 174
    move-object/from16 v0, p2

    iget-wide v8, v0, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ParsingData;->speed:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Lcom/google/gson/JsonArray;->add(Ljava/lang/Number;)V

    .line 177
    if-nez v27, :cond_1

    .line 178
    invoke-virtual/range {v18 .. v19}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 180
    :cond_1
    const/4 v14, 0x0

    .line 181
    goto :goto_0

    .line 119
    .restart local v4    # "header":Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader;
    .restart local v25    # "rangeEnd":I
    .restart local v26    # "rangeStart":I
    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v17

    .line 121
    .local v17, "bytes":[B
    const/4 v5, 0x0

    .line 122
    .local v5, "intValue":I
    const/16 v28, 0x0

    .line 123
    .local v28, "stringValue":Ljava/lang/String;
    const/16 v16, 0x0

    .line 124
    .local v16, "boolValue":Z
    const/16 v20, 0x0

    .line 125
    .local v20, "floatValue":F
    const-wide/16 v6, 0x0

    .line 128
    .local v6, "doubleValue":D
    sget-object v8, Lcom/parrot/freeflight/core/academy/uploader/PudParser$1;->$SwitchMap$com$parrot$freeflight$core$academy$model$ARAcademyPudHeader$HeaderType:[I

    iget-object v9, v4, Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader;->type:Ljava/lang/String;

    invoke-static {v9}, Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader$HeaderType;->getFromValue(Ljava/lang/String;)Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader$HeaderType;

    move-result-object v9

    invoke-virtual {v9}, Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader$HeaderType;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 152
    :goto_3
    iget v8, v4, Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader;->size:I

    add-int v23, v23, v8

    .line 155
    iget-object v8, v4, Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader;->name:Ljava/lang/String;

    invoke-static {v8}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;->getFromValue(Ljava/lang/String;)Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

    move-result-object v8

    sget-object v9, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;->HEADER_TIME:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

    if-ne v8, v9, :cond_5

    iget-object v8, v4, Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader;->type:Ljava/lang/String;

    .line 156
    invoke-static {v8}, Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader$HeaderType;->getFromValue(Ljava/lang/String;)Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader$HeaderType;

    move-result-object v8

    sget-object v9, Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader$HeaderType;->TYPE_INTEGER:Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader$HeaderType;

    if-ne v8, v9, :cond_5

    .line 157
    move/from16 v0, v24

    if-lt v5, v0, :cond_3

    move/from16 v0, v24

    add-int/lit16 v8, v0, 0x2710

    if-le v5, v8, :cond_4

    .line 159
    :cond_3
    const/16 v27, 0x1

    .line 160
    goto :goto_2

    .line 130
    :pswitch_0
    invoke-static/range {v17 .. v17}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v28

    .line 131
    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonArray;->add(Ljava/lang/String;)V

    goto :goto_3

    .line 134
    :pswitch_1
    invoke-static/range {v17 .. v17}, Lcom/parrot/freeflight/core/academy/uploader/PudParser;->byteArrayToInt([B)I

    move-result v5

    .line 135
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Lcom/google/gson/JsonArray;->add(Ljava/lang/Number;)V

    goto :goto_3

    .line 138
    :pswitch_2
    invoke-static/range {v17 .. v17}, Lcom/parrot/freeflight/core/academy/uploader/PudParser;->byteArrayToBoolean([B)Z

    move-result v16

    .line 139
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Lcom/google/gson/JsonArray;->add(Ljava/lang/Boolean;)V

    goto :goto_3

    .line 142
    :pswitch_3
    invoke-static/range {v17 .. v17}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    sget-object v9, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v20

    .line 143
    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Lcom/google/gson/JsonArray;->add(Ljava/lang/Number;)V

    goto :goto_3

    .line 146
    :pswitch_4
    invoke-static/range {v17 .. v17}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    sget-object v9, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v6

    .line 147
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Lcom/google/gson/JsonArray;->add(Ljava/lang/Number;)V

    goto/16 :goto_3

    .line 162
    :cond_4
    move/from16 v24, v5

    .line 166
    :cond_5
    move/from16 v0, v20

    float-to-double v8, v0

    move-object/from16 v10, p2

    invoke-static/range {v4 .. v10}, Lcom/parrot/freeflight/core/academy/uploader/PudParser;->findRunStates(Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader;IDDLcom/parrot/freeflight/core/academy/uploader/PudParser$ParsingData;)V

    .line 167
    if-nez v21, :cond_6

    move-object v9, v4

    move/from16 v10, v16

    move v11, v5

    move-wide v12, v6

    move-object/from16 v15, p2

    .line 168
    invoke-static/range {v9 .. v15}, Lcom/parrot/freeflight/core/academy/uploader/PudParser;->findControllerGpsPosition(Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader;ZIDZLcom/parrot/freeflight/core/academy/uploader/PudParser$ParsingData;)Z

    move-result v21

    .line 110
    :cond_6
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_1

    .line 183
    .end local v4    # "header":Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader;
    .end local v5    # "intValue":I
    .end local v6    # "doubleValue":D
    .end local v16    # "boolValue":Z
    .end local v17    # "bytes":[B
    .end local v19    # "detailsDataSet":Lcom/google/gson/JsonArray;
    .end local v20    # "floatValue":F
    .end local v22    # "i":I
    .end local v25    # "rangeEnd":I
    .end local v26    # "rangeStart":I
    .end local v28    # "stringValue":Ljava/lang/String;
    :cond_7
    return-object v18

    .line 128
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static parsePudFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 18
    .param p0, "pudFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/freeflight/core/academy/uploader/InvalidPudFileException;
        }
    .end annotation

    .prologue
    .line 40
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 42
    .local v11, "productFile":Ljava/io/File;
    const/4 v15, 0x0

    invoke-static {v11, v15}, Lcom/parrot/freeflight/core/academy/utils/FileUtils;->findCharIndex(Ljava/io/File;C)I

    move-result v9

    .line 43
    .local v9, "offset":I
    if-nez v9, :cond_0

    .line 44
    new-instance v15, Lcom/parrot/freeflight/core/academy/uploader/InvalidPudFileException;

    const-string v16, "File separator not found"

    invoke-direct/range {v15 .. v16}, Lcom/parrot/freeflight/core/academy/uploader/InvalidPudFileException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 47
    :cond_0
    const-string v12, ""

    .line 48
    .local v12, "productJson":Ljava/lang/String;
    const/4 v15, 0x0

    invoke-static {v11, v15, v9}, Lcom/parrot/freeflight/core/academy/utils/FileUtils;->readFileWithOffset(Ljava/io/File;II)[B

    move-result-object v7

    .line 49
    .local v7, "jsonContent":[B
    if-eqz v7, :cond_1

    .line 50
    new-instance v12, Ljava/lang/String;

    .end local v12    # "productJson":Ljava/lang/String;
    invoke-direct {v12, v7}, Ljava/lang/String;-><init>([B)V

    .line 53
    .restart local v12    # "productJson":Ljava/lang/String;
    :cond_1
    add-int/lit8 v15, v9, 0x1

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v11, v15, v0}, Lcom/parrot/freeflight/core/academy/utils/FileUtils;->readFileWithOffset(Ljava/io/File;II)[B

    move-result-object v2

    .line 56
    .local v2, "binaryContent":[B
    new-instance v5, Lcom/google/gson/Gson;

    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    .line 59
    .local v5, "gson":Lcom/google/gson/Gson;
    :try_start_0
    const-class v15, Lcom/parrot/freeflight/core/academy/model/ARAcademyPud;

    invoke-virtual {v5, v12, v15}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/parrot/freeflight/core/academy/model/ARAcademyPud;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .local v14, "pud":Lcom/parrot/freeflight/core/academy/model/ARAcademyPud;
    new-instance v10, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ParsingData;

    const/4 v15, 0x0

    invoke-direct {v10, v15}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ParsingData;-><init>(Lcom/parrot/freeflight/core/academy/uploader/PudParser$1;)V

    .line 65
    .local v10, "parsingData":Lcom/parrot/freeflight/core/academy/uploader/PudParser$ParsingData;
    invoke-virtual {v14}, Lcom/parrot/freeflight/core/academy/model/ARAcademyPud;->getDetailsHeaders()Ljava/util/List;

    move-result-object v15

    invoke-static {v2, v15, v10}, Lcom/parrot/freeflight/core/academy/uploader/PudParser;->parseBinaryPart([BLjava/util/List;Lcom/parrot/freeflight/core/academy/uploader/PudParser$ParsingData;)Lcom/google/gson/JsonArray;

    move-result-object v3

    .line 68
    .local v3, "detailsData":Lcom/google/gson/JsonArray;
    new-instance v4, Lcom/google/gson/JsonArray;

    invoke-direct {v4}, Lcom/google/gson/JsonArray;-><init>()V

    .line 69
    .local v4, "detailsHeaderNames":Lcom/google/gson/JsonArray;
    invoke-virtual {v14}, Lcom/parrot/freeflight/core/academy/model/ARAcademyPud;->getDetailsHeaders()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader;

    .line 70
    .local v6, "header":Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader;
    iget-object v0, v6, Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/google/gson/JsonArray;->add(Ljava/lang/String;)V

    goto :goto_0

    .line 60
    .end local v3    # "detailsData":Lcom/google/gson/JsonArray;
    .end local v4    # "detailsHeaderNames":Lcom/google/gson/JsonArray;
    .end local v6    # "header":Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader;
    .end local v10    # "parsingData":Lcom/parrot/freeflight/core/academy/uploader/PudParser$ParsingData;
    .end local v14    # "pud":Lcom/parrot/freeflight/core/academy/model/ARAcademyPud;
    :catch_0
    move-exception v8

    .line 61
    .local v8, "jsonEx":Lcom/google/gson/JsonSyntaxException;
    new-instance v15, Lcom/parrot/freeflight/core/academy/uploader/InvalidPudFileException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Error parsing PUD file : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v8}, Lcom/google/gson/JsonSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lcom/parrot/freeflight/core/academy/uploader/InvalidPudFileException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 74
    .end local v8    # "jsonEx":Lcom/google/gson/JsonSyntaxException;
    .restart local v3    # "detailsData":Lcom/google/gson/JsonArray;
    .restart local v4    # "detailsHeaderNames":Lcom/google/gson/JsonArray;
    .restart local v10    # "parsingData":Lcom/parrot/freeflight/core/academy/uploader/PudParser$ParsingData;
    .restart local v14    # "pud":Lcom/parrot/freeflight/core/academy/model/ARAcademyPud;
    :cond_2
    invoke-static {v14, v3, v4, v10}, Lcom/parrot/freeflight/core/academy/uploader/PudParser;->buildAcademyJson(Lcom/parrot/freeflight/core/academy/model/ARAcademyPud;Lcom/google/gson/JsonArray;Lcom/google/gson/JsonArray;Lcom/parrot/freeflight/core/academy/uploader/PudParser$ParsingData;)Lcom/google/gson/JsonObject;

    move-result-object v13

    .line 77
    .local v13, "productJsonObject":Lcom/google/gson/JsonObject;
    invoke-virtual {v13}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v15

    return-object v15
.end method
