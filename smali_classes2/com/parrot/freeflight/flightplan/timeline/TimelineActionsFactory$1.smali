.class synthetic Lcom/parrot/freeflight/flightplan/timeline/TimelineActionsFactory$1;
.super Ljava/lang/Object;
.source "TimelineActionsFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/flightplan/timeline/TimelineActionsFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$parrot$arsdk$ardiscovery$ARDISCOVERY_PRODUCT_FAMILY_ENUM:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_FAMILY_ENUM;->values()[Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_FAMILY_ENUM;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineActionsFactory$1;->$SwitchMap$com$parrot$arsdk$ardiscovery$ARDISCOVERY_PRODUCT_FAMILY_ENUM:[I

    :try_start_0
    sget-object v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineActionsFactory$1;->$SwitchMap$com$parrot$arsdk$ardiscovery$ARDISCOVERY_PRODUCT_FAMILY_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_FAMILY_ENUM;->ARDISCOVERY_PRODUCT_FAMILY_FIXED_WING:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_FAMILY_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_FAMILY_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
