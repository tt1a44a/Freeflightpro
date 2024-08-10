.class synthetic Lcom/parrot/arsdk/arutils/ARUtilsManager$1;
.super Ljava/lang/Object;
.source "ARUtilsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/arsdk/arutils/ARUtilsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$parrot$arsdk$ardiscovery$ARDISCOVERY_NETWORK_TYPE_ENUM:[I

.field static final synthetic $SwitchMap$com$parrot$arsdk$arutils$ARUTILS_FTP_TYPE_ENUM:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 216
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;->values()[Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/parrot/arsdk/arutils/ARUtilsManager$1;->$SwitchMap$com$parrot$arsdk$ardiscovery$ARDISCOVERY_NETWORK_TYPE_ENUM:[I

    :try_start_0
    sget-object v0, Lcom/parrot/arsdk/arutils/ARUtilsManager$1;->$SwitchMap$com$parrot$arsdk$ardiscovery$ARDISCOVERY_NETWORK_TYPE_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;->ARDISCOVERY_NETWORK_TYPE_NET:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v0, Lcom/parrot/arsdk/arutils/ARUtilsManager$1;->$SwitchMap$com$parrot$arsdk$ardiscovery$ARDISCOVERY_NETWORK_TYPE_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;->ARDISCOVERY_NETWORK_TYPE_BLE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v0, Lcom/parrot/arsdk/arutils/ARUtilsManager$1;->$SwitchMap$com$parrot$arsdk$ardiscovery$ARDISCOVERY_NETWORK_TYPE_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;->ARDISCOVERY_NETWORK_TYPE_USBMUX:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    .line 200
    :goto_2
    invoke-static {}, Lcom/parrot/arsdk/arutils/ARUTILS_FTP_TYPE_ENUM;->values()[Lcom/parrot/arsdk/arutils/ARUTILS_FTP_TYPE_ENUM;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/parrot/arsdk/arutils/ARUtilsManager$1;->$SwitchMap$com$parrot$arsdk$arutils$ARUTILS_FTP_TYPE_ENUM:[I

    :try_start_3
    sget-object v0, Lcom/parrot/arsdk/arutils/ARUtilsManager$1;->$SwitchMap$com$parrot$arsdk$arutils$ARUTILS_FTP_TYPE_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arutils/ARUTILS_FTP_TYPE_ENUM;->ARUTILS_FTP_TYPE_GENERIC:Lcom/parrot/arsdk/arutils/ARUTILS_FTP_TYPE_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arutils/ARUTILS_FTP_TYPE_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v0, Lcom/parrot/arsdk/arutils/ARUtilsManager$1;->$SwitchMap$com$parrot$arsdk$arutils$ARUTILS_FTP_TYPE_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arutils/ARUTILS_FTP_TYPE_ENUM;->ARUTILS_FTP_TYPE_UPDATE:Lcom/parrot/arsdk/arutils/ARUTILS_FTP_TYPE_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arutils/ARUTILS_FTP_TYPE_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v0, Lcom/parrot/arsdk/arutils/ARUtilsManager$1;->$SwitchMap$com$parrot$arsdk$arutils$ARUTILS_FTP_TYPE_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arutils/ARUTILS_FTP_TYPE_ENUM;->ARUTILS_FTP_TYPE_FLIGHTPLAN:Lcom/parrot/arsdk/arutils/ARUTILS_FTP_TYPE_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arutils/ARUTILS_FTP_TYPE_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    return-void

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_3

    .line 216
    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    goto :goto_1

    :catch_5
    move-exception v0

    goto :goto_0
.end method
