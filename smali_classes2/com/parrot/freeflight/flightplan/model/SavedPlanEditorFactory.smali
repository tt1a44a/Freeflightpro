.class public Lcom/parrot/freeflight/flightplan/model/SavedPlanEditorFactory;
.super Ljava/lang/Object;
.source "SavedPlanEditorFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createJsonSavedPlanEditor(Ljava/lang/String;)Lcom/parrot/freeflight/flightplan/model/ISavedPlanEditor;
    .locals 1
    .param p0, "uuid"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 18
    new-instance v0, Lcom/parrot/freeflight/flightplan/model/JsonEditor;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/flightplan/model/JsonEditor;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static createMavlinkSavedPlanEditor(Ljava/lang/String;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Lcom/parrot/freeflight/flightplan/model/ISavedPlanEditor;
    .locals 2
    .param p0, "mavlinkFilePath"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 30
    :try_start_0
    new-instance v1, Lcom/parrot/freeflight/flightplan/model/MavlinkEditor;

    invoke-direct {v1, p0, p1}, Lcom/parrot/freeflight/flightplan/model/MavlinkEditor;-><init>(Ljava/lang/String;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)V
    :try_end_0
    .catch Lcom/parrot/arsdk/armavlink/ARMavlinkException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :goto_0
    return-object v1

    .line 31
    :catch_0
    move-exception v0

    .line 32
    .local v0, "e":Lcom/parrot/arsdk/armavlink/ARMavlinkException;
    invoke-virtual {v0}, Lcom/parrot/arsdk/armavlink/ARMavlinkException;->printStackTrace()V

    .line 34
    const/4 v1, 0x0

    goto :goto_0
.end method
