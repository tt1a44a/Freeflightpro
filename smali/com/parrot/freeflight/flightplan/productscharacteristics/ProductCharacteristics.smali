.class public Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;
.super Ljava/lang/Object;
.source "ProductCharacteristics.java"


# static fields
.field static final AUTONOMOUS_FLIGHT_ALTITUDE_DEFAULT:Ljava/lang/String; = "AUTONOMOUS_FLIGHT_ALTITUDE_DEFAULT"

.field static final AUTONOMOUS_FLIGHT_ALTITUDE_MAX:Ljava/lang/String; = "AUTONOMOUS_FLIGHT_ALTITUDE_MAX"

.field static final AUTONOMOUS_FLIGHT_ALTITUDE_MIN:Ljava/lang/String; = "AUTONOMOUS_FLIGHT_ALTITUDE_MIN"

.field static final AUTONOMOUS_FLIGHT_DEFAULT_SPEED:Ljava/lang/String; = "AUTONOMOUS_FLIGHT_DEFAULT_SPEED"

.field static final AUTONOMOUS_FLIGHT_DOWNWARDS_SPEED:Ljava/lang/String; = "AUTONOMOUS_FLIGHT_DOWNWARDS_SPEED"

.field static final AUTONOMOUS_FLIGHT_FIRST_WP_SPEED:Ljava/lang/String; = "AUTONOMOUS_FLIGHT_FIRST_WP_SPEED"

.field static final AUTONOMOUS_FLIGHT_HORIZONTAL_SPEED_MAX:Ljava/lang/String; = "AUTONOMOUS_FLIGHT_HORIZONTAL_SPEED_MAX"

.field static final AUTONOMOUS_FLIGHT_HORIZONTAL_SPEED_MIN:Ljava/lang/String; = "AUTONOMOUS_FLIGHT_HORIZONTAL_SPEED_MIN"

.field static final AUTONOMOUS_FLIGHT_LANDING_SPEED:Ljava/lang/String; = "AUTONOMOUS_FLIGHT_LANDING_SPEED"

.field static final AUTONOMOUS_FLIGHT_ROTATION_SPEED_DEFAULT:Ljava/lang/String; = "AUTONOMOUS_FLIGHT_ROTATION_SPEED_DEFAULT"

.field static final AUTONOMOUS_FLIGHT_ROTATION_SPEED_MAX:Ljava/lang/String; = "AUTONOMOUS_FLIGHT_ROTATION_SPEED_MAX"

.field static final AUTONOMOUS_FLIGHT_ROTATION_SPEED_MIN:Ljava/lang/String; = "AUTONOMOUS_FLIGHT_ROTATION_SPEED_MIN"

.field static final AUTONOMOUS_FLIGHT_RUNWAY_MIN:Ljava/lang/String; = "AUTONOMOUS_FLIGHT_RUNWAY_MIN"

.field static final AUTONOMOUS_FLIGHT_TAKE_OFF_TIME:Ljava/lang/String; = "AUTONOMOUS_FLIGHT_TAKE_OFF_TIME"

.field static final AUTONOMOUS_FLIGHT_TILT_ANGLE_DEFAULT:Ljava/lang/String; = "AUTONOMOUS_FLIGHT_TILT_ANGLE_DEFAULT"

.field static final AUTONOMOUS_FLIGHT_TILT_ANGLE_MAX:Ljava/lang/String; = "AUTONOMOUS_FLIGHT_TILT_ANGLE_MAX"

.field static final AUTONOMOUS_FLIGHT_TILT_ANGLE_MIN:Ljava/lang/String; = "AUTONOMOUS_FLIGHT_TILT_ANGLE_MIN"

.field static final AUTONOMOUS_FLIGHT_TILT_SPEED_DEFAULT:Ljava/lang/String; = "AUTONOMOUS_FLIGHT_TILT_SPEED_DEFAULT"

.field static final AUTONOMOUS_FLIGHT_TILT_SPEED_MAX:Ljava/lang/String; = "AUTONOMOUS_FLIGHT_TILT_SPEED_MAX"

.field static final AUTONOMOUS_FLIGHT_TILT_SPEED_MIN:Ljava/lang/String; = "AUTONOMOUS_FLIGHT_TILT_SPEED_MIN"

.field static final AUTONOMOUS_FLIGHT_UPWARDS_SPEED:Ljava/lang/String; = "AUTONOMOUS_FLIGHT_UPWARDS_SPEED"

.field static final AUTONOMOUS_FLIGHT_WP_ORBIT_RADIUS_DEFAULT:Ljava/lang/String; = "AUTONOMOUS_FLIGHT_WP_ORBIT_RADIUS_DEFAULT"

.field static final AUTONOMOUS_FLIGHT_WP_ORBIT_RADIUS_MAX:Ljava/lang/String; = "AUTONOMOUS_FLIGHT_WP_ORBIT_RADIUS_MAX"

.field static final AUTONOMOUS_FLIGHT_WP_ORBIT_RADIUS_MIN:Ljava/lang/String; = "AUTONOMOUS_FLIGHT_WP_ORBIT_RADIUS_MIN"


# instance fields
.field private final mCharacteristicsPreferences:Landroid/content/SharedPreferences;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 0
    .param p1, "characteristicsPreferences"    # Landroid/content/SharedPreferences;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;->mCharacteristicsPreferences:Landroid/content/SharedPreferences;

    .line 37
    return-void
.end method


# virtual methods
.method public getDefaultAltitude()F
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;->mCharacteristicsPreferences:Landroid/content/SharedPreferences;

    const-string v1, "AUTONOMOUS_FLIGHT_ALTITUDE_DEFAULT"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getDefaultRotationSpeed()F
    .locals 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;->mCharacteristicsPreferences:Landroid/content/SharedPreferences;

    const-string v1, "AUTONOMOUS_FLIGHT_ROTATION_SPEED_DEFAULT"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getDefaultSpeed()I
    .locals 3

    .prologue
    .line 48
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;->mCharacteristicsPreferences:Landroid/content/SharedPreferences;

    const-string v1, "AUTONOMOUS_FLIGHT_DEFAULT_SPEED"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getDefaultTiltAngle()F
    .locals 3

    .prologue
    .line 76
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;->mCharacteristicsPreferences:Landroid/content/SharedPreferences;

    const-string v1, "AUTONOMOUS_FLIGHT_TILT_ANGLE_DEFAULT"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getDefaultTiltSpeed()F
    .locals 3

    .prologue
    .line 88
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;->mCharacteristicsPreferences:Landroid/content/SharedPreferences;

    const-string v1, "AUTONOMOUS_FLIGHT_TILT_SPEED_DEFAULT"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getDefaultWpOrbitRadius()F
    .locals 3

    .prologue
    .line 124
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;->mCharacteristicsPreferences:Landroid/content/SharedPreferences;

    const-string v1, "AUTONOMOUS_FLIGHT_WP_ORBIT_RADIUS_DEFAULT"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getDownwardsSpeed()F
    .locals 3

    .prologue
    .line 52
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;->mCharacteristicsPreferences:Landroid/content/SharedPreferences;

    const-string v1, "AUTONOMOUS_FLIGHT_DOWNWARDS_SPEED"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getFirstWpSpeed()I
    .locals 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;->mCharacteristicsPreferences:Landroid/content/SharedPreferences;

    const-string v1, "AUTONOMOUS_FLIGHT_FIRST_WP_SPEED"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLandingSpeed()F
    .locals 3

    .prologue
    .line 56
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;->mCharacteristicsPreferences:Landroid/content/SharedPreferences;

    const-string v1, "AUTONOMOUS_FLIGHT_LANDING_SPEED"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getMaxAltitude()F
    .locals 3

    .prologue
    .line 116
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;->mCharacteristicsPreferences:Landroid/content/SharedPreferences;

    const-string v1, "AUTONOMOUS_FLIGHT_ALTITUDE_MAX"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getMaxHorizontalSpeed()I
    .locals 3

    .prologue
    .line 44
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;->mCharacteristicsPreferences:Landroid/content/SharedPreferences;

    const-string v1, "AUTONOMOUS_FLIGHT_HORIZONTAL_SPEED_MAX"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMaxRotationSpeed()F
    .locals 3

    .prologue
    .line 104
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;->mCharacteristicsPreferences:Landroid/content/SharedPreferences;

    const-string v1, "AUTONOMOUS_FLIGHT_ROTATION_SPEED_MAX"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getMaxTiltAngle()F
    .locals 3

    .prologue
    .line 80
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;->mCharacteristicsPreferences:Landroid/content/SharedPreferences;

    const-string v1, "AUTONOMOUS_FLIGHT_TILT_ANGLE_MAX"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getMaxTiltSpeed()F
    .locals 3

    .prologue
    .line 92
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;->mCharacteristicsPreferences:Landroid/content/SharedPreferences;

    const-string v1, "AUTONOMOUS_FLIGHT_TILT_SPEED_MAX"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getMaxWpOrbitRadius()F
    .locals 3

    .prologue
    .line 128
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;->mCharacteristicsPreferences:Landroid/content/SharedPreferences;

    const-string v1, "AUTONOMOUS_FLIGHT_WP_ORBIT_RADIUS_MAX"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getMinAltitude()F
    .locals 3

    .prologue
    .line 108
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;->mCharacteristicsPreferences:Landroid/content/SharedPreferences;

    const-string v1, "AUTONOMOUS_FLIGHT_ALTITUDE_MIN"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getMinHorizontalSpeed()I
    .locals 3

    .prologue
    .line 40
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;->mCharacteristicsPreferences:Landroid/content/SharedPreferences;

    const-string v1, "AUTONOMOUS_FLIGHT_HORIZONTAL_SPEED_MIN"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMinRotationSpeed()F
    .locals 3

    .prologue
    .line 96
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;->mCharacteristicsPreferences:Landroid/content/SharedPreferences;

    const-string v1, "AUTONOMOUS_FLIGHT_ROTATION_SPEED_MIN"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getMinRunWay()F
    .locals 3

    .prologue
    .line 132
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;->mCharacteristicsPreferences:Landroid/content/SharedPreferences;

    const-string v1, "AUTONOMOUS_FLIGHT_RUNWAY_MIN"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getMinTiltAngle()F
    .locals 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;->mCharacteristicsPreferences:Landroid/content/SharedPreferences;

    const-string v1, "AUTONOMOUS_FLIGHT_TILT_ANGLE_MIN"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getMinTiltSpeed()F
    .locals 3

    .prologue
    .line 84
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;->mCharacteristicsPreferences:Landroid/content/SharedPreferences;

    const-string v1, "AUTONOMOUS_FLIGHT_TILT_SPEED_MIN"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getMinWpOrbitRadius()F
    .locals 3

    .prologue
    .line 120
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;->mCharacteristicsPreferences:Landroid/content/SharedPreferences;

    const-string v1, "AUTONOMOUS_FLIGHT_WP_ORBIT_RADIUS_MIN"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getTakeOffTime()F
    .locals 3

    .prologue
    .line 68
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;->mCharacteristicsPreferences:Landroid/content/SharedPreferences;

    const-string v1, "AUTONOMOUS_FLIGHT_TAKE_OFF_TIME"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getUpwardsSpeed()F
    .locals 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;->mCharacteristicsPreferences:Landroid/content/SharedPreferences;

    const-string v1, "AUTONOMOUS_FLIGHT_UPWARDS_SPEED"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method
