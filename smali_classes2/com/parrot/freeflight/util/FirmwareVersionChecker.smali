.class public Lcom/parrot/freeflight/util/FirmwareVersionChecker;
.super Ljava/lang/Object;
.source "FirmwareVersionChecker.java"


# static fields
.field private static final DISCO_TRAMPOLINE_VERSION:Ljava/lang/String; = "1.0.5"

.field public static final LAST_SUCCESSFUL_VERSIONS_UPDATE:Ljava/lang/String; = "last_successful_versions_update"

.field private static final LOCAL_BLACKLISTED_FIRMWARES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOCAL_TRAMPOLINE_FIRMWARES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final OK_PROD_SOFTWARE_VERSION_FORMAT:Ljava/lang/String; = "^\\d+\\.\\d+\\.\\d+$"

.field public static final PLF_EXTENSION:Ljava/lang/String; = ".plf"

.field private static final SHARED_PREF_BLACKLISTED_FIRMWARE_VERSIONS_ANAFI4K:Ljava/lang/String; = "blacklisted_firmware_versions_anafi4k"

.field private static final SHARED_PREF_BLACKLISTED_FIRMWARE_VERSIONS_BEBOP:Ljava/lang/String; = "blacklisted_firmware_versions_bebop"

.field private static final SHARED_PREF_BLACKLISTED_FIRMWARE_VERSIONS_BEBOP2:Ljava/lang/String; = "blacklisted_firmware_versions_bebop2"

.field private static final SHARED_PREF_BLACKLISTED_FIRMWARE_VERSIONS_CHIMERA:Ljava/lang/String; = "blacklisted_firmware_versions_chimera"

.field private static final SHARED_PREF_BLACKLISTED_FIRMWARE_VERSIONS_DELOS3:Ljava/lang/String; = "blacklisted_firmware_versions_delos3"

.field private static final SHARED_PREF_BLACKLISTED_FIRMWARE_VERSIONS_EVINRUDE:Ljava/lang/String; = "blacklisted_firmware_versions_evinrude"

.field private static final SHARED_PREF_BLACKLISTED_FIRMWARE_VERSIONS_RS:Ljava/lang/String; = "blacklisted_firmware_versions_rs"

.field private static final SHARED_PREF_BLACKLISTED_FIRMWARE_VERSIONS_RS_BRICK:Ljava/lang/String; = "blacklisted_firmware_versions_rs_brick"

.field private static final SHARED_PREF_BLACKLISTED_FIRMWARE_VERSIONS_RS_HYDROFOIL:Ljava/lang/String; = "blacklisted_firmware_versions_rs_hydrofoil"

.field private static final SHARED_PREF_BLACKLISTED_FIRMWARE_VERSIONS_RS_LIGHT:Ljava/lang/String; = "blacklisted_firmware_versions_rs_light"

.field private static final SHARED_PREF_BLACKLISTED_FIRMWARE_VERSIONS_SC:Ljava/lang/String; = "blacklisted_firmware_versions_sc"

.field private static final SHARED_PREF_BLACKLISTED_FIRMWARE_VERSIONS_SC2:Ljava/lang/String; = "blacklisted_firmware_versions_sc2"

.field private static final SHARED_PREF_BLACKLISTED_FIRMWARE_VERSIONS_SC2P:Ljava/lang/String; = "blacklisted_firmware_versions_sc2p"

.field private static final SHARED_PREF_BLACKLISTED_FIRMWARE_VERSIONS_SCNG:Ljava/lang/String; = "blacklisted_firmware_versions_scng"

.field private static final SHARED_PREF_BLACKLISTED_FIRMWARE_VERSIONS_WINGX:Ljava/lang/String; = "blacklisted_firmware_versions_wingx"

.field private static final SHARED_PREF_FIRMWARE_VERSION_ANAFI4K:Ljava/lang/String; = "firmware_version_anafi4k"

.field private static final SHARED_PREF_FIRMWARE_VERSION_BEBOP:Ljava/lang/String; = "firmware_version_bebop"

.field private static final SHARED_PREF_FIRMWARE_VERSION_BEBOP2:Ljava/lang/String; = "firmware_version_bebop2"

.field private static final SHARED_PREF_FIRMWARE_VERSION_CHIMERA:Ljava/lang/String; = "firmware_version_chimera"

.field private static final SHARED_PREF_FIRMWARE_VERSION_DELOS3:Ljava/lang/String; = "firmware_version_delos3"

.field private static final SHARED_PREF_FIRMWARE_VERSION_EVINRUDE:Ljava/lang/String; = "firmware_version_evinrude"

.field private static final SHARED_PREF_FIRMWARE_VERSION_FLYPAD:Ljava/lang/String; = "firmware_version_flypad"

.field private static final SHARED_PREF_FIRMWARE_VERSION_RS:Ljava/lang/String; = "firmware_version_rs"

.field private static final SHARED_PREF_FIRMWARE_VERSION_RS_BRICK:Ljava/lang/String; = "firmware_version_rs_brick"

.field private static final SHARED_PREF_FIRMWARE_VERSION_RS_HYDROFOIL:Ljava/lang/String; = "firmware_version_rs_hydrofoil"

.field private static final SHARED_PREF_FIRMWARE_VERSION_RS_LIGHT:Ljava/lang/String; = "firmware_version_rs_light"

.field private static final SHARED_PREF_FIRMWARE_VERSION_SC:Ljava/lang/String; = "firmware_version_sc"

.field private static final SHARED_PREF_FIRMWARE_VERSION_SC2:Ljava/lang/String; = "firmware_version_sc2"

.field private static final SHARED_PREF_FIRMWARE_VERSION_SC2P:Ljava/lang/String; = "firmware_version_sc2p"

.field private static final SHARED_PREF_FIRMWARE_VERSION_SCNG:Ljava/lang/String; = "firmware_version_scng"

.field private static final SHARED_PREF_FIRMWARE_VERSION_WINGX:Ljava/lang/String; = "firmware_version_wingx"

.field public static final SHARED_PREF_NAME:Ljava/lang/String; = "firmware_checker"

.field public static final TAR_EXTENSION:Ljava/lang/String; = ".tar"

.field public static final TAR_GZ_EXTENSION:Ljava/lang/String; = ".tar.gz"

.field public static final TGZ_EXTENSION:Ljava/lang/String; = ".tgz"

.field public static final TIMESTAMP_NONE:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    invoke-static {}, Lcom/parrot/freeflight/util/FirmwareVersionChecker;->initLocalBlacklistedFirmwares()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight/util/FirmwareVersionChecker;->LOCAL_BLACKLISTED_FIRMWARES:Ljava/util/Map;

    .line 69
    invoke-static {}, Lcom/parrot/freeflight/util/FirmwareVersionChecker;->initLocalTrampolineFirmwares()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight/util/FirmwareVersionChecker;->LOCAL_TRAMPOLINE_FIRMWARES:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static embeddedVersionUpToDateFromServer(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 279
    invoke-static {p0, p1}, Lcom/parrot/freeflight/util/FirmwareVersionChecker;->getServerFirmwareVersion(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Ljava/lang/String;

    move-result-object v1

    .line 280
    .local v1, "serverVersion":Ljava/lang/String;
    invoke-static {p0, p1}, Lcom/parrot/freeflight/util/FirmwareVersionChecker;->getEmbeddedFirmwareVersion(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Ljava/lang/String;

    move-result-object v0

    .line 282
    .local v0, "embeddedVersion":Ljava/lang/String;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 283
    invoke-static {v1, v0}, Lcom/parrot/arsdk/arupdater/ARUpdaterManager;->comparePlfVersions(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-gtz v3, :cond_0

    const/4 v2, 0x1

    .line 285
    :cond_0
    return v2
.end method

.method public static getBlacklistSharedPrefNameFromProduct(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Ljava/lang/String;
    .locals 2
    .param p0, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 136
    sget-object v0, Lcom/parrot/freeflight/util/FirmwareVersionChecker$1;->$SwitchMap$com$parrot$arsdk$ardiscovery$ARDISCOVERY_PRODUCT_ENUM:[I

    invoke-virtual {p0}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 170
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 138
    :pswitch_0
    const-string v0, "blacklisted_firmware_versions_rs"

    goto :goto_0

    .line 140
    :pswitch_1
    const-string v0, "blacklisted_firmware_versions_rs_light"

    goto :goto_0

    .line 142
    :pswitch_2
    const-string v0, "blacklisted_firmware_versions_rs_brick"

    goto :goto_0

    .line 144
    :pswitch_3
    const-string v0, "blacklisted_firmware_versions_rs_hydrofoil"

    goto :goto_0

    .line 146
    :pswitch_4
    const-string v0, "blacklisted_firmware_versions_delos3"

    goto :goto_0

    .line 148
    :pswitch_5
    const-string v0, "blacklisted_firmware_versions_wingx"

    goto :goto_0

    .line 150
    :pswitch_6
    const-string v0, "blacklisted_firmware_versions_bebop"

    goto :goto_0

    .line 152
    :pswitch_7
    const-string v0, "blacklisted_firmware_versions_bebop2"

    goto :goto_0

    .line 154
    :pswitch_8
    const-string v0, "blacklisted_firmware_versions_chimera"

    goto :goto_0

    .line 156
    :pswitch_9
    const-string v0, "blacklisted_firmware_versions_evinrude"

    goto :goto_0

    .line 158
    :pswitch_a
    const-string v0, "blacklisted_firmware_versions_anafi4k"

    goto :goto_0

    .line 160
    :pswitch_b
    const-string v0, "blacklisted_firmware_versions_sc"

    goto :goto_0

    .line 162
    :pswitch_c
    const-string v0, "blacklisted_firmware_versions_sc2"

    goto :goto_0

    .line 164
    :pswitch_d
    const-string v0, "blacklisted_firmware_versions_sc2p"

    goto :goto_0

    .line 166
    :pswitch_e
    const-string v0, "blacklisted_firmware_versions_scng"

    goto :goto_0

    .line 136
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public static getEmbeddedFirmwareVersion(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 341
    const-string v1, "embedded_firmware"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 342
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-static {v0, p1}, Lcom/parrot/freeflight/util/FirmwareVersionChecker;->getFirmwareVersion(Landroid/content/SharedPreferences;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getEmbeddedFirmwareVersions(Landroid/content/Context;)Ljava/util/EnumMap;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/EnumMap",
            "<",
            "Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 320
    const-string v1, "embedded_firmware"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 321
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/parrot/freeflight/util/FirmwareVersionChecker;->getFirmwareVersions(Landroid/content/SharedPreferences;)Ljava/util/EnumMap;

    move-result-object v1

    return-object v1
.end method

.method public static getFirmwareSharedPrefNameFromProduct(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Ljava/lang/String;
    .locals 2
    .param p0, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 95
    sget-object v0, Lcom/parrot/freeflight/util/FirmwareVersionChecker$1;->$SwitchMap$com$parrot$arsdk$ardiscovery$ARDISCOVERY_PRODUCT_ENUM:[I

    invoke-virtual {p0}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 131
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 97
    :pswitch_0
    const-string v0, "firmware_version_rs"

    goto :goto_0

    .line 99
    :pswitch_1
    const-string v0, "firmware_version_rs_light"

    goto :goto_0

    .line 101
    :pswitch_2
    const-string v0, "firmware_version_rs_brick"

    goto :goto_0

    .line 103
    :pswitch_3
    const-string v0, "firmware_version_rs_hydrofoil"

    goto :goto_0

    .line 105
    :pswitch_4
    const-string v0, "firmware_version_delos3"

    goto :goto_0

    .line 107
    :pswitch_5
    const-string v0, "firmware_version_wingx"

    goto :goto_0

    .line 109
    :pswitch_6
    const-string v0, "firmware_version_bebop"

    goto :goto_0

    .line 111
    :pswitch_7
    const-string v0, "firmware_version_bebop2"

    goto :goto_0

    .line 113
    :pswitch_8
    const-string v0, "firmware_version_chimera"

    goto :goto_0

    .line 115
    :pswitch_9
    const-string v0, "firmware_version_evinrude"

    goto :goto_0

    .line 117
    :pswitch_a
    const-string v0, "firmware_version_anafi4k"

    goto :goto_0

    .line 119
    :pswitch_b
    const-string v0, "firmware_version_sc"

    goto :goto_0

    .line 121
    :pswitch_c
    const-string v0, "firmware_version_sc2"

    goto :goto_0

    .line 123
    :pswitch_d
    const-string v0, "firmware_version_sc2p"

    goto :goto_0

    .line 125
    :pswitch_e
    const-string v0, "firmware_version_scng"

    goto :goto_0

    .line 127
    :pswitch_f
    const-string v0, "firmware_version_flypad"

    goto :goto_0

    .line 95
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method private static getFirmwareVersion(Landroid/content/SharedPreferences;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Ljava/lang/String;
    .locals 2
    .param p0, "prefs"    # Landroid/content/SharedPreferences;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 326
    invoke-static {p1}, Lcom/parrot/freeflight/util/FirmwareVersionChecker;->getFirmwareSharedPrefNameFromProduct(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, "key":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 328
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 330
    :cond_0
    return-object v1
.end method

.method private static getFirmwareVersions(Landroid/content/SharedPreferences;)Ljava/util/EnumMap;
    .locals 4
    .param p0, "prefs"    # Landroid/content/SharedPreferences;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            ")",
            "Ljava/util/EnumMap",
            "<",
            "Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 290
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 292
    .local v0, "maps":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;>;"
    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MINIDRONE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    const-string v2, "firmware_version_rs"

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MINIDRONE_EVO_LIGHT:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    const-string v2, "firmware_version_rs_light"

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MINIDRONE_EVO_BRICK:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    const-string v2, "firmware_version_rs_brick"

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MINIDRONE_EVO_HYDROFOIL:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    const-string v2, "firmware_version_rs_hydrofoil"

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MINIDRONE_DELOS3:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    const-string v2, "firmware_version_delos3"

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MINIDRONE_WINGX:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    const-string v2, "firmware_version_wingx"

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_ARDRONE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    const-string v2, "firmware_version_bebop"

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_BEBOP_2:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    const-string v2, "firmware_version_bebop2"

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_CHIMERA:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    const-string v2, "firmware_version_chimera"

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_ANAFI4K:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    const-string v2, "firmware_version_anafi4k"

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_EVINRUDE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    const-string v2, "firmware_version_evinrude"

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_SKYCONTROLLER:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    const-string v2, "firmware_version_sc"

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_SKYCONTROLLER_2:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    const-string v2, "firmware_version_sc2"

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_SKYCONTROLLER_2P:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    const-string v2, "firmware_version_sc2p"

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_SKYCONTROLLER_NG:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    const-string v2, "firmware_version_scng"

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_TINOS:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    const-string v2, "firmware_version_flypad"

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    return-object v0
.end method

.method public static getLastSuccessfulVersionUpdate(Landroid/content/Context;)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 360
    const-string v1, "firmware_checker"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 361
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "last_successful_versions_update"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method

.method public static getServerFirmwareVersion(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 335
    const-string v1, "firmware_checker"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 336
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-static {v0, p1}, Lcom/parrot/freeflight/util/FirmwareVersionChecker;->getFirmwareVersion(Landroid/content/SharedPreferences;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getServerFirmwareVersions(Landroid/content/Context;)Ljava/util/EnumMap;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/EnumMap",
            "<",
            "Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 314
    const-string v1, "firmware_checker"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 315
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/parrot/freeflight/util/FirmwareVersionChecker;->getFirmwareVersions(Landroid/content/SharedPreferences;)Ljava/util/EnumMap;

    move-result-object v1

    return-object v1
.end method

.method public static getTrampolineVersion(Lcom/parrot/freeflight/update/task/DeviceVersion;)Lcom/parrot/freeflight/util/Version;
    .locals 3
    .param p0, "deviceVersion"    # Lcom/parrot/freeflight/update/task/DeviceVersion;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 347
    sget-object v1, Lcom/parrot/freeflight/util/FirmwareVersionChecker;->LOCAL_TRAMPOLINE_FIRMWARES:Ljava/util/Map;

    iget-object v2, p0, Lcom/parrot/freeflight/update/task/DeviceVersion;->product:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 348
    .local v0, "stringVersion":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 349
    new-instance v1, Lcom/parrot/freeflight/util/Version;

    invoke-direct {v1, v0}, Lcom/parrot/freeflight/util/Version;-><init>(Ljava/lang/String;)V

    .line 351
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static initLocalBlacklistedFirmwares()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 78
    .local v0, "firmwares":Ljava/util/Map;, "Ljava/util/Map<Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;[Ljava/lang/String;>;"
    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_SKYCONTROLLER_2:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0.9.1"

    aput-object v3, v2, v4

    const-string v3, "1.0.0"

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_EVINRUDE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "1.0.0"

    aput-object v3, v2, v4

    const-string v3, "1.0.2"

    aput-object v3, v2, v5

    const-string v3, "1.0.3"

    aput-object v3, v2, v6

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_BEBOP_2:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "3.4.0"

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    return-object v0
.end method

.method private static initLocalTrampolineFirmwares()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 89
    .local v0, "firmwares":Ljava/util/Map;, "Ljava/util/Map<Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;>;"
    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_EVINRUDE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    const-string v2, "1.0.5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    return-object v0
.end method

.method public static isDevelopmentVersion(Ljava/lang/String;)Z
    .locals 1
    .param p0, "version"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 373
    const-string v0, "0.0.0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "^\\d+\\.\\d+\\.\\d+$"

    .line 374
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 373
    :goto_0
    return v0

    .line 374
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isLocalUpdateAvailable(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "version"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 244
    invoke-static {p2}, Lcom/parrot/freeflight/util/FirmwareVersionChecker;->isDevelopmentVersion(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 254
    :goto_0
    return v6

    .line 247
    :cond_0
    new-instance v3, Lcom/parrot/freeflight/update/task/DeviceVersion;

    invoke-direct {v3, p2, p1}, Lcom/parrot/freeflight/update/task/DeviceVersion;-><init>(Ljava/lang/String;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)V

    .line 248
    .local v3, "productVersion":Lcom/parrot/freeflight/update/task/DeviceVersion;
    invoke-static {v3}, Lcom/parrot/freeflight/util/FirmwareVersionChecker;->getTrampolineVersion(Lcom/parrot/freeflight/update/task/DeviceVersion;)Lcom/parrot/freeflight/util/Version;

    move-result-object v4

    .line 249
    .local v4, "trampolineVersion":Lcom/parrot/freeflight/util/Version;
    if-eqz v4, :cond_1

    iget-object v7, v3, Lcom/parrot/freeflight/update/task/DeviceVersion;->version:Lcom/parrot/freeflight/util/Version;

    invoke-virtual {v7, v4}, Lcom/parrot/freeflight/util/Version;->compareTo(Lcom/parrot/freeflight/util/Version;)I

    move-result v7

    if-gez v7, :cond_1

    move v2, v5

    .line 250
    .local v2, "needTrampolineUpdate":Z
    :goto_1
    if-eqz v2, :cond_2

    invoke-static {p0}, Lcom/parrot/freeflight/update/UpdateFolderProvider;->getSdkTrampolineFolderPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 253
    .local v1, "folder":Ljava/lang/String;
    :goto_2
    invoke-static {p1, v1, p2}, Lcom/parrot/freeflight/update/task/PlfChecker;->compareDownloadedPlfToVersion(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;Ljava/lang/String;)Lcom/parrot/arsdk/arupdater/ARUpdaterUploadPlfVersionInfo;

    move-result-object v0

    .line 254
    .local v0, "deviceVersion":Lcom/parrot/arsdk/arupdater/ARUpdaterUploadPlfVersionInfo;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/parrot/arsdk/arupdater/ARUpdaterUploadPlfVersionInfo;->getLocalVersion()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, p2}, Lcom/parrot/arsdk/arupdater/ARUpdaterManager;->comparePlfVersions(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_3

    :goto_3
    move v6, v5

    goto :goto_0

    .end local v0    # "deviceVersion":Lcom/parrot/arsdk/arupdater/ARUpdaterUploadPlfVersionInfo;
    .end local v1    # "folder":Ljava/lang/String;
    .end local v2    # "needTrampolineUpdate":Z
    :cond_1
    move v2, v6

    .line 249
    goto :goto_1

    .line 250
    .restart local v2    # "needTrampolineUpdate":Z
    :cond_2
    invoke-static {p0}, Lcom/parrot/freeflight/update/UpdateFolderProvider;->getSdkFolderPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .restart local v0    # "deviceVersion":Lcom/parrot/arsdk/arupdater/ARUpdaterUploadPlfVersionInfo;
    .restart local v1    # "folder":Ljava/lang/String;
    :cond_3
    move v5, v6

    .line 254
    goto :goto_3
.end method

.method public static isProductUpdateMandatory(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "productSoftwareVersion"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 268
    invoke-static {p1, p2}, Lcom/parrot/freeflight/util/FirmwareVersionChecker;->isProductVersionLocallyBlacklisted(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    invoke-static {p0, p1, p2}, Lcom/parrot/freeflight/util/FirmwareVersionChecker;->isProductVersionServerBlacklisted(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 270
    invoke-static {p0, p1, p2}, Lcom/parrot/freeflight/util/FirmwareVersionChecker;->isLocalUpdateAvailable(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 268
    :goto_0
    return v0

    .line 270
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isProductVersionBlacklisted(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "productSoftwareVersion"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 274
    invoke-static {p1, p2}, Lcom/parrot/freeflight/util/FirmwareVersionChecker;->isProductVersionLocallyBlacklisted(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 275
    invoke-static {p0, p1, p2}, Lcom/parrot/freeflight/util/FirmwareVersionChecker;->isProductVersionServerBlacklisted(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 274
    :goto_0
    return v0

    .line 275
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isProductVersionLocallyBlacklisted(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;)Z
    .locals 6
    .param p0, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "productSoftwareVersion"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 204
    sget-object v3, Lcom/parrot/freeflight/util/FirmwareVersionChecker;->LOCAL_BLACKLISTED_FIRMWARES:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 205
    .local v1, "localBlacklistedVersions":[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 206
    array-length v4, v1

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v1, v3

    .line 207
    .local v0, "firm":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 208
    const/4 v2, 0x1

    .line 212
    .end local v0    # "firm":Ljava/lang/String;
    :cond_0
    return v2

    .line 206
    .restart local v0    # "firm":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private static isProductVersionServerBlacklisted(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "productSoftwareVersion"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 225
    const-string v4, "firmware_checker"

    invoke-virtual {p0, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 226
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-static {p1}, Lcom/parrot/freeflight/util/FirmwareVersionChecker;->getBlacklistSharedPrefNameFromProduct(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Ljava/lang/String;

    move-result-object v2

    .line 227
    .local v2, "sharedPrefName":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 231
    :cond_0
    :goto_0
    return v3

    .line 230
    :cond_1
    const/4 v4, 0x0

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 231
    .local v0, "blacklistedVersions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static isTrampolineVersion(Ljava/lang/String;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Z
    .locals 2
    .param p0, "stringVersion"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 355
    sget-object v1, Lcom/parrot/freeflight/util/FirmwareVersionChecker;->LOCAL_TRAMPOLINE_FIRMWARES:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 356
    .local v0, "trampolineVersion":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static shouldUpdateProduct(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "productSoftwareVersion"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 193
    invoke-static {p0, p1, p2}, Lcom/parrot/freeflight/util/FirmwareVersionChecker;->shouldUpdateProductFromEmbeddedVersion(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1, p2}, Lcom/parrot/freeflight/util/FirmwareVersionChecker;->shouldUpdateProductFromServerVersion(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static shouldUpdateProductFromEmbeddedVersion(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "productSoftwareVersion"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 183
    invoke-static {p0}, Lcom/parrot/freeflight/util/FirmwareVersionChecker;->getEmbeddedFirmwareVersions(Landroid/content/Context;)Ljava/util/EnumMap;

    move-result-object v0

    .line 184
    .local v0, "embeddedFirmwareVersions":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;>;"
    invoke-static {v0, p1, p2}, Lcom/parrot/freeflight/util/FirmwareVersionChecker;->shouldUpdateProductFromVersions(Ljava/util/EnumMap;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static shouldUpdateProductFromServerVersion(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "productSoftwareVersion"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 188
    invoke-static {p0}, Lcom/parrot/freeflight/util/FirmwareVersionChecker;->getServerFirmwareVersions(Landroid/content/Context;)Ljava/util/EnumMap;

    move-result-object v0

    .line 189
    .local v0, "serverFirmwareVersions":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;>;"
    invoke-static {v0, p1, p2}, Lcom/parrot/freeflight/util/FirmwareVersionChecker;->shouldUpdateProductFromVersions(Ljava/util/EnumMap;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private static shouldUpdateProductFromVersions(Ljava/util/EnumMap;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;)Z
    .locals 3
    .param p0    # Ljava/util/EnumMap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "productSoftwareVersion"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap",
            "<",
            "Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "versions":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 174
    invoke-virtual {p0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 175
    .local v0, "versionString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 176
    invoke-static {v0, p2}, Lcom/parrot/arsdk/arupdater/ARUpdaterManager;->comparePlfVersions(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    .line 178
    :cond_0
    return v1
.end method
