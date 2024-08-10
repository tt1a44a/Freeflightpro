.class public Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductsDefaultCharacteristicsWriter;
.super Ljava/lang/Object;
.source "ProductsDefaultCharacteristicsWriter.java"


# static fields
.field public static final DRONE_CHARACTERISTICS_KEY:Ljava/lang/String; = "DRONE_CHARACTERISTICS_KEY"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static writeBebopIfNeeded(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)V
    .locals 10
    .param p0, "droneProduct"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/high16 v9, 0x43340000    # 180.0f

    const/high16 v8, 0x41f00000    # 30.0f

    const/high16 v7, 0x40400000    # 3.0f

    const/high16 v4, 0x40200000    # 2.5f

    const/4 v5, 0x0

    .line 23
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DRONE_CHARACTERISTICS_KEY"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 24
    .local v0, "droneCharacteristicsKey":Ljava/lang/String;
    invoke-static {}, Lcom/parrot/freeflight/MainApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v3, v0, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 26
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 27
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "AUTONOMOUS_FLIGHT_HORIZONTAL_SPEED_MIN"

    const/4 v6, 0x1

    invoke-static {v2, v1, v3, v6}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductsDefaultCharacteristicsWriter;->writeIntCharacteristicIfNeeded(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;I)V

    .line 28
    const-string v3, "AUTONOMOUS_FLIGHT_HORIZONTAL_SPEED_MAX"

    const/16 v6, 0xa

    invoke-static {v2, v1, v3, v6}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductsDefaultCharacteristicsWriter;->writeIntCharacteristicIfNeeded(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;I)V

    .line 29
    const-string v3, "AUTONOMOUS_FLIGHT_DEFAULT_SPEED"

    const/4 v6, 0x5

    invoke-static {v2, v1, v3, v6}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductsDefaultCharacteristicsWriter;->writeIntCharacteristicIfNeeded(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;I)V

    .line 30
    const-string v6, "AUTONOMOUS_FLIGHT_DOWNWARDS_SPEED"

    sget-object v3, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_ARDRONE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    if-ne p0, v3, :cond_0

    move v3, v4

    :goto_0
    invoke-static {v2, v1, v6, v3}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductsDefaultCharacteristicsWriter;->writeFloatCharacteristicIfNeeded(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;F)V

    .line 31
    const-string v3, "AUTONOMOUS_FLIGHT_LANDING_SPEED"

    const v6, 0x3f8ccccd    # 1.1f

    invoke-static {v2, v1, v3, v6}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductsDefaultCharacteristicsWriter;->writeFloatCharacteristicIfNeeded(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;F)V

    .line 32
    const-string v3, "AUTONOMOUS_FLIGHT_UPWARDS_SPEED"

    invoke-static {v2, v1, v3, v4}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductsDefaultCharacteristicsWriter;->writeFloatCharacteristicIfNeeded(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;F)V

    .line 33
    const-string v3, "AUTONOMOUS_FLIGHT_FIRST_WP_SPEED"

    const/4 v4, 0x6

    invoke-static {v2, v1, v3, v4}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductsDefaultCharacteristicsWriter;->writeIntCharacteristicIfNeeded(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;I)V

    .line 34
    const-string v3, "AUTONOMOUS_FLIGHT_TAKE_OFF_TIME"

    invoke-static {v2, v1, v3, v7}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductsDefaultCharacteristicsWriter;->writeFloatCharacteristicIfNeeded(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;F)V

    .line 35
    const-string v4, "AUTONOMOUS_FLIGHT_TILT_ANGLE_MIN"

    sget-object v3, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_ARDRONE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    if-ne p0, v3, :cond_1

    const/high16 v3, -0x3d5a0000    # -83.0f

    :goto_1
    invoke-static {v2, v1, v4, v3}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductsDefaultCharacteristicsWriter;->writeFloatCharacteristicIfNeeded(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;F)V

    .line 36
    const-string v4, "AUTONOMOUS_FLIGHT_TILT_ANGLE_DEFAULT"

    sget-object v3, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_ARDRONE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    if-ne p0, v3, :cond_2

    move v3, v5

    :goto_2
    invoke-static {v2, v1, v4, v3}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductsDefaultCharacteristicsWriter;->writeFloatCharacteristicIfNeeded(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;F)V

    .line 37
    const-string v4, "AUTONOMOUS_FLIGHT_TILT_ANGLE_MAX"

    sget-object v3, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_ARDRONE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    if-ne p0, v3, :cond_3

    const/high16 v3, 0x41880000    # 17.0f

    :goto_3
    invoke-static {v2, v1, v4, v3}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductsDefaultCharacteristicsWriter;->writeFloatCharacteristicIfNeeded(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;F)V

    .line 38
    const-string v3, "AUTONOMOUS_FLIGHT_TILT_SPEED_MIN"

    const v4, 0x3dcccccd    # 0.1f

    invoke-static {v2, v1, v3, v4}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductsDefaultCharacteristicsWriter;->writeFloatCharacteristicIfNeeded(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;F)V

    .line 39
    const-string v3, "AUTONOMOUS_FLIGHT_TILT_SPEED_DEFAULT"

    invoke-static {v2, v1, v3, v8}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductsDefaultCharacteristicsWriter;->writeFloatCharacteristicIfNeeded(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;F)V

    .line 40
    const-string v3, "AUTONOMOUS_FLIGHT_TILT_SPEED_MAX"

    invoke-static {v2, v1, v3, v9}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductsDefaultCharacteristicsWriter;->writeFloatCharacteristicIfNeeded(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;F)V

    .line 41
    const-string v3, "AUTONOMOUS_FLIGHT_ROTATION_SPEED_MIN"

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v2, v1, v3, v4}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductsDefaultCharacteristicsWriter;->writeFloatCharacteristicIfNeeded(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;F)V

    .line 42
    const-string v3, "AUTONOMOUS_FLIGHT_ROTATION_SPEED_DEFAULT"

    invoke-static {v2, v1, v3, v8}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductsDefaultCharacteristicsWriter;->writeFloatCharacteristicIfNeeded(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;F)V

    .line 43
    const-string v3, "AUTONOMOUS_FLIGHT_ROTATION_SPEED_MAX"

    invoke-static {v2, v1, v3, v9}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductsDefaultCharacteristicsWriter;->writeFloatCharacteristicIfNeeded(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;F)V

    .line 44
    const-string v3, "AUTONOMOUS_FLIGHT_ALTITUDE_MIN"

    const v4, 0x3ecccccd    # 0.4f

    invoke-static {v2, v1, v3, v4}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductsDefaultCharacteristicsWriter;->writeFloatCharacteristicIfNeeded(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;F)V

    .line 45
    const-string v3, "AUTONOMOUS_FLIGHT_ALTITUDE_DEFAULT"

    invoke-static {v2, v1, v3, v7}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductsDefaultCharacteristicsWriter;->writeFloatCharacteristicIfNeeded(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;F)V

    .line 46
    const-string v3, "AUTONOMOUS_FLIGHT_ALTITUDE_MAX"

    const/high16 v4, 0x43160000    # 150.0f

    invoke-static {v2, v1, v3, v4}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductsDefaultCharacteristicsWriter;->writeFloatCharacteristicIfNeeded(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;F)V

    .line 47
    const-string v3, "AUTONOMOUS_FLIGHT_WP_ORBIT_RADIUS_MIN"

    invoke-static {v2, v1, v3, v5}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductsDefaultCharacteristicsWriter;->writeFloatCharacteristicIfNeeded(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;F)V

    .line 48
    const-string v3, "AUTONOMOUS_FLIGHT_WP_ORBIT_RADIUS_DEFAULT"

    invoke-static {v2, v1, v3, v5}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductsDefaultCharacteristicsWriter;->writeFloatCharacteristicIfNeeded(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;F)V

    .line 49
    const-string v3, "AUTONOMOUS_FLIGHT_WP_ORBIT_RADIUS_MAX"

    invoke-static {v2, v1, v3, v5}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductsDefaultCharacteristicsWriter;->writeFloatCharacteristicIfNeeded(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;F)V

    .line 50
    const-string v3, "AUTONOMOUS_FLIGHT_RUNWAY_MIN"

    invoke-static {v2, v1, v3, v5}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductsDefaultCharacteristicsWriter;->writeFloatCharacteristicIfNeeded(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;F)V

    .line 51
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 52
    return-void

    .line 30
    :cond_0
    const/high16 v3, 0x40000000    # 2.0f

    goto/16 :goto_0

    .line 35
    :cond_1
    const/high16 v3, -0x3d400000    # -96.0f

    goto :goto_1

    .line 36
    :cond_2
    const/high16 v3, -0x3eb00000    # -13.0f

    goto :goto_2

    .line 37
    :cond_3
    const/high16 v3, 0x40800000    # 4.0f

    goto :goto_3
.end method

.method private static writeFixedWingIfNeeded(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)V
    .locals 10
    .param p0, "droneProduct"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/high16 v9, 0x41f00000    # 30.0f

    const/high16 v8, 0x41400000    # 12.0f

    const/4 v7, 0x0

    const/16 v6, 0xc

    const/high16 v5, 0x40a00000    # 5.0f

    .line 55
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DRONE_CHARACTERISTICS_KEY"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "droneCharacteristicsKey":Ljava/lang/String;
    invoke-static {}, Lcom/parrot/freeflight/MainApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 58
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 59
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "AUTONOMOUS_FLIGHT_HORIZONTAL_SPEED_MIN"

    invoke-static {v2, v1, v3, v6}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductsDefaultCharacteristicsWriter;->writeIntCharacteristicIfNeeded(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;I)V

    .line 60
    const-string v3, "AUTONOMOUS_FLIGHT_HORIZONTAL_SPEED_MAX"

    invoke-static {v2, v1, v3, v6}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductsDefaultCharacteristicsWriter;->writeIntCharacteristicIfNeeded(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;I)V

    .line 61
    const-string v3, "AUTONOMOUS_FLIGHT_DEFAULT_SPEED"

    invoke-static {v2, v1, v3, v6}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductsDefaultCharacteristicsWriter;->writeIntCharacteristicIfNeeded(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;I)V

    .line 62
    const-string v3, "AUTONOMOUS_FLIGHT_DOWNWARDS_SPEED"

    invoke-static {v2, v1, v3, v8}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductsDefaultCharacteristicsWriter;->writeFloatCharacteristicIfNeeded(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;F)V

    .line 63
    const-string v3, "AUTONOMOUS_FLIGHT_LANDING_SPEED"

    invoke-static {v2, v1, v3, v5}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductsDefaultCharacteristicsWriter;->writeFloatCharacteristicIfNeeded(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;F)V

    .line 64
    const-string v3, "AUTONOMOUS_FLIGHT_UPWARDS_SPEED"

    invoke-static {v2, v1, v3, v5}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductsDefaultCharacteristicsWriter;->writeFloatCharacteristicIfNeeded(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;F)V

    .line 65
    const-string v3, "AUTONOMOUS_FLIGHT_FIRST_WP_SPEED"

    invoke-static {v2, v1, v3, v6}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductsDefaultCharacteristicsWriter;->writeIntCharacteristicIfNeeded(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;I)V

    .line 66
    const-string v3, "AUTONOMOUS_FLIGHT_TAKE_OFF_TIME"

    invoke-static {v2, v1, v3, v8}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductsDefaultCharacteristicsWriter;->writeFloatCharacteristicIfNeeded(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;F)V

    .line 67
    const-string v3, "AUTONOMOUS_FLIGHT_TILT_ANGLE_MIN"

    const/high16 v4, -0x3d420000    # -95.0f

    invoke-static {v2, v1, v3, v4}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductsDefaultCharacteristicsWriter;->writeFloatCharacteristicIfNeeded(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;F)V

    .line 68
    const-string v3, "AUTONOMOUS_FLIGHT_TILT_ANGLE_DEFAULT"

    const/high16 v4, -0x3ec00000    # -12.0f

    invoke-static {v2, v1, v3, v4}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductsDefaultCharacteristicsWriter;->writeFloatCharacteristicIfNeeded(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;F)V

    .line 69
    const-string v3, "AUTONOMOUS_FLIGHT_TILT_ANGLE_MAX"

    invoke-static {v2, v1, v3, v5}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductsDefaultCharacteristicsWriter;->writeFloatCharacteristicIfNeeded(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;F)V

    .line 70
    const-string v3, "AUTONOMOUS_FLIGHT_TILT_SPEED_MIN"

    const v4, 0x3dcccccd    # 0.1f

    invoke-static {v2, v1, v3, v4}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductsDefaultCharacteristicsWriter;->writeFloatCharacteristicIfNeeded(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;F)V

    .line 71
    const-string v3, "AUTONOMOUS_FLIGHT_TILT_SPEED_DEFAULT"

    invoke-static {v2, v1, v3, v9}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductsDefaultCharacteristicsWriter;->writeFloatCharacteristicIfNeeded(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;F)V

    .line 72
    const-string v3, "AUTONOMOUS_FLIGHT_TILT_SPEED_MAX"

    const/high16 v4, 0x43340000    # 180.0f

    invoke-static {v2, v1, v3, v4}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductsDefaultCharacteristicsWriter;->writeFloatCharacteristicIfNeeded(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;F)V

    .line 73
    const-string v3, "AUTONOMOUS_FLIGHT_ROTATION_SPEED_MIN"

    invoke-static {v2, v1, v3, v7}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductsDefaultCharacteristicsWriter;->writeFloatCharacteristicIfNeeded(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;F)V

    .line 74
    const-string v3, "AUTONOMOUS_FLIGHT_ROTATION_SPEED_DEFAULT"

    invoke-static {v2, v1, v3, v7}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductsDefaultCharacteristicsWriter;->writeFloatCharacteristicIfNeeded(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;F)V

    .line 75
    const-string v3, "AUTONOMOUS_FLIGHT_ROTATION_SPEED_MAX"

    invoke-static {v2, v1, v3, v7}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductsDefaultCharacteristicsWriter;->writeFloatCharacteristicIfNeeded(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;F)V

    .line 76
    const-string v3, "AUTONOMOUS_FLIGHT_ALTITUDE_MIN"

    invoke-static {v2, v1, v3, v5}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductsDefaultCharacteristicsWriter;->writeFloatCharacteristicIfNeeded(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;F)V

    .line 77
    const-string v3, "AUTONOMOUS_FLIGHT_ALTITUDE_DEFAULT"

    const/high16 v4, 0x42480000    # 50.0f

    invoke-static {v2, v1, v3, v4}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductsDefaultCharacteristicsWriter;->writeFloatCharacteristicIfNeeded(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;F)V

    .line 78
    const-string v3, "AUTONOMOUS_FLIGHT_ALTITUDE_MAX"

    const/high16 v4, 0x43160000    # 150.0f

    invoke-static {v2, v1, v3, v4}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductsDefaultCharacteristicsWriter;->writeFloatCharacteristicIfNeeded(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;F)V

    .line 79
    const-string v3, "AUTONOMOUS_FLIGHT_WP_ORBIT_RADIUS_MIN"

    const/high16 v4, 0x41c80000    # 25.0f

    invoke-static {v2, v1, v3, v4}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductsDefaultCharacteristicsWriter;->writeFloatCharacteristicIfNeeded(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;F)V

    .line 80
    const-string v3, "AUTONOMOUS_FLIGHT_WP_ORBIT_RADIUS_DEFAULT"

    invoke-static {v2, v1, v3, v9}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductsDefaultCharacteristicsWriter;->writeFloatCharacteristicIfNeeded(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;F)V

    .line 81
    const-string v3, "AUTONOMOUS_FLIGHT_WP_ORBIT_RADIUS_MAX"

    const/high16 v4, 0x42480000    # 50.0f

    invoke-static {v2, v1, v3, v4}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductsDefaultCharacteristicsWriter;->writeFloatCharacteristicIfNeeded(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;F)V

    .line 82
    const-string v3, "AUTONOMOUS_FLIGHT_RUNWAY_MIN"

    const/high16 v4, 0x43480000    # 200.0f

    invoke-static {v2, v1, v3, v4}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductsDefaultCharacteristicsWriter;->writeFloatCharacteristicIfNeeded(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;F)V

    .line 83
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 84
    return-void
.end method

.method private static writeFloatCharacteristicIfNeeded(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;F)V
    .locals 1
    .param p0, "preferences"    # Landroid/content/SharedPreferences;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "editor"    # Landroid/content/SharedPreferences$Editor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "characteristic"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "value"    # F

    .prologue
    .line 93
    invoke-interface {p0, p2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, p2, v0}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    cmpl-float v0, v0, p3

    if-eqz v0, :cond_1

    .line 94
    :cond_0
    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 96
    :cond_1
    return-void
.end method

.method public static writeIfNeeded()V
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_ARDRONE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductsDefaultCharacteristicsWriter;->writeBebopIfNeeded(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)V

    .line 16
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_BEBOP_2:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductsDefaultCharacteristicsWriter;->writeBebopIfNeeded(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)V

    .line 17
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_CHIMERA:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductsDefaultCharacteristicsWriter;->writeBebopIfNeeded(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)V

    .line 18
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_ANAFI4K:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductsDefaultCharacteristicsWriter;->writeBebopIfNeeded(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)V

    .line 19
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_EVINRUDE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductsDefaultCharacteristicsWriter;->writeFixedWingIfNeeded(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)V

    .line 20
    return-void
.end method

.method private static writeIntCharacteristicIfNeeded(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;I)V
    .locals 1
    .param p0, "preferences"    # Landroid/content/SharedPreferences;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "editor"    # Landroid/content/SharedPreferences$Editor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "characteristic"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "value"    # I

    .prologue
    .line 87
    invoke-interface {p0, p2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, p2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, p3, :cond_1

    .line 88
    :cond_0
    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 90
    :cond_1
    return-void
.end method
