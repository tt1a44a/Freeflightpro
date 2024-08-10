.class public Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MavlinkFileListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$ActionToDoListener;
    }
.end annotation


# static fields
.field private static final DIALOG_CONTENT_PADDING:I = 0xa

.field private static final KEY_EXTRA_MAP_INFO:Ljava/lang/String; = "KEY_EXTRA_MAP_INFO"

.field private static final KEY_EXTRA_PRODUCT:Ljava/lang/String; = "KEY_EXTRA_PRODUCT"

.field public static final KEY_EXTRA_UUID:Ljava/lang/String; = "KEY_EXTRA_UUID"

.field private static final KEY_SELECTED_PLAN_POSITION:Ljava/lang/String; = "KEY_SELECTED_PLAN_POSITION"

.field public static final RESULT_LOAD:I = 0x2

.field public static final RESULT_NEW:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field public static final TEMP_SNAPSHOT:Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkListAdapter;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mDeleteButton:Landroid/widget/Button;

.field private mLoadButton:Landroid/widget/Button;

.field private mMapInfo:Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mSaveAsButton:Landroid/widget/Button;

.field private mSnapshot:Landroid/graphics/Bitmap;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    const-class v0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->TAG:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/parrot/freeflight/flightplan/model/SavedPlanParser;->SAVEPLAN_LIST_FOLDER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "temp.jpeg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->TEMP_SNAPSHOT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;
    .param p1, "x1"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->setSelectedItemPosition(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;)Lcom/parrot/freeflight/flightplan/mavlink/MavlinkListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->mAdapter:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkListAdapter;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;Ljava/io/File;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;
    .param p1, "x1"    # Ljava/io/File;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->deleteFileOrFolder(Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;)Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->requestSaveCurrentState(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->mSaveAsButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$ActionToDoListener;Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$ActionToDoListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;
    .param p1, "x1"    # Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$ActionToDoListener;
    .param p2, "x2"    # Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$ActionToDoListener;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->getTitleBeforeExecute(Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$ActionToDoListener;Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$ActionToDoListener;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->findMetaDataIndexForUUID(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->showRightButtons()V

    return-void
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->hideRightButtons()V

    return-void
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->onNewClick()V

    return-void
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->onSaveClick()V

    return-void
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->onSaveAsClick()V

    return-void
.end method

.method static synthetic access$700(Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->onDeleteClick()V

    return-void
.end method

.method static synthetic access$800(Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->onLoadClick()V

    return-void
.end method

.method static synthetic access$900(Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->save(Ljava/lang/String;)V

    return-void
.end method

.method private checkUnsavedPlanBeforeExecute(Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$ActionToDoListener;)V
    .locals 3
    .param p1, "actionListener"    # Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$ActionToDoListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 378
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->isPlanSaved()Z

    move-result v1

    if-nez v1, :cond_0

    .line 380
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    const v1, 0x7f120009

    invoke-direct {v0, p0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 382
    .local v0, "dialogBuilder":Landroid/support/v7/app/AlertDialog$Builder;
    const v1, 0x7f1105a3

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 383
    const v1, 0x7f110668

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 385
    const v1, 0x7f11012c

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 386
    const v1, 0x7f1104bb

    new-instance v2, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$13;

    invoke-direct {v2, p0, p1}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$13;-><init>(Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$ActionToDoListener;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 392
    const v1, 0x7f1107f6

    new-instance v2, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$14;

    invoke-direct {v2, p0, p1}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$14;-><init>(Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$ActionToDoListener;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 420
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 424
    .end local v0    # "dialogBuilder":Landroid/support/v7/app/AlertDialog$Builder;
    :goto_0
    return-void

    .line 422
    :cond_0
    invoke-interface {p1, v2}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$ActionToDoListener;->execute(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private deleteFileOrFolder(Ljava/io/File;)V
    .locals 4
    .param p1, "fileOrDirectory"    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 368
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 369
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 370
    .local v0, "child":Ljava/io/File;
    invoke-direct {p0, v0}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->deleteFileOrFolder(Ljava/io/File;)V

    .line 369
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 373
    .end local v0    # "child":Ljava/io/File;
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 374
    return-void
.end method

.method private findMetaDataIndexForUUID(Ljava/lang/String;)I
    .locals 3
    .param p1, "uuid"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 292
    const/4 v1, -0x1

    .line 293
    .local v1, "retVal":I
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->mAdapter:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkListAdapter;

    if-eqz v2, :cond_0

    .line 294
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->mAdapter:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkListAdapter;

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkListAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 295
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->mAdapter:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkListAdapter;

    invoke-virtual {v2, v0}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 296
    move v1, v0

    .line 301
    .end local v0    # "i":I
    :cond_0
    return v1

    .line 294
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getSelectedItemPosition()I
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->mAdapter:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkListAdapter;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->mAdapter:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkListAdapter;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkListAdapter;->getSelectedPosition()I

    move-result v0

    .line 309
    :goto_0
    return v0

    .line 308
    :cond_0
    sget-object v0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->TAG:Ljava/lang/String;

    const-string v1, "Adapter is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getStartingIntent(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "mapInfo"    # Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 78
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 79
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "KEY_EXTRA_PRODUCT"

    invoke-virtual {p1}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 80
    const-string v1, "KEY_EXTRA_MAP_INFO"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 81
    return-object v0
.end method

.method private getTitleBeforeExecute(Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$ActionToDoListener;Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$ActionToDoListener;)V
    .locals 12
    .param p1, "saveActionListener"    # Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$ActionToDoListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "postActionListener"    # Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$ActionToDoListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    const v3, 0x7f11073d

    const/16 v7, 0xa

    .line 428
    new-instance v11, Landroid/support/v7/app/AlertDialog$Builder;

    const v1, 0x7f120009

    invoke-direct {v11, p0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 429
    .local v11, "dialogBuilder":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v11, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 431
    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 432
    .local v2, "editText":Landroid/widget/EditText;
    const v1, 0x7f050028

    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 433
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 435
    const v1, 0x7f11012c

    invoke-virtual {v11, v1, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 436
    const v1, 0x7f1104d4

    invoke-virtual {v11, v1, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 438
    invoke-virtual {v11}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v5

    .line 440
    .local v5, "dialog":Landroid/support/v7/app/AlertDialog;
    new-instance v0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$15;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$15;-><init>(Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;Landroid/widget/EditText;Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$ActionToDoListener;Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$ActionToDoListener;Landroid/support/v7/app/AlertDialog;)V

    .local v0, "onClick":Landroid/view/View$OnClickListener;
    move-object v6, v2

    move v8, v7

    move v9, v7

    move v10, v7

    .line 469
    invoke-virtual/range {v5 .. v10}, Landroid/support/v7/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    .line 470
    invoke-virtual {v5}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 472
    const/4 v1, -0x1

    invoke-virtual {v5, v1}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 473
    return-void
.end method

.method private hideRightButtons()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 327
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->mDeleteButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 328
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->mLoadButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 329
    return-void
.end method

.method private onDeleteClick()V
    .locals 1

    .prologue
    .line 268
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->getSelectedItemPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->showDeleteConfirmationDialog(I)V

    .line 269
    return-void
.end method

.method private onLoadClick()V
    .locals 4

    .prologue
    .line 272
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->getSelectedItemPosition()I

    move-result v2

    .line 273
    .local v2, "selectedIndex":I
    if-ltz v2, :cond_0

    .line 274
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->mAdapter:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkListAdapter;

    invoke-virtual {v3, v2}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;

    .line 275
    .local v1, "item":Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->getUuid()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 276
    new-instance v0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$11;

    invoke-direct {v0, p0, v1}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$11;-><init>(Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;)V

    .line 286
    .local v0, "actionListener":Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$ActionToDoListener;
    invoke-direct {p0, v0}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->checkUnsavedPlanBeforeExecute(Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$ActionToDoListener;)V

    .line 289
    .end local v0    # "actionListener":Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$ActionToDoListener;
    .end local v1    # "item":Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;
    :cond_0
    return-void
.end method

.method private onNewClick()V
    .locals 1

    .prologue
    .line 191
    new-instance v0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$8;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$8;-><init>(Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;)V

    .line 198
    .local v0, "actionListener":Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$ActionToDoListener;
    invoke-direct {p0, v0}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->checkUnsavedPlanBeforeExecute(Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$ActionToDoListener;)V

    .line 199
    return-void
.end method

.method private onSaveAsClick()V
    .locals 2

    .prologue
    .line 221
    new-instance v0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$10;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$10;-><init>(Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;)V

    .line 227
    .local v0, "saveActionListener":Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$ActionToDoListener;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->getTitleBeforeExecute(Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$ActionToDoListener;Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$ActionToDoListener;)V

    .line 228
    return-void
.end method

.method private onSaveClick()V
    .locals 5

    .prologue
    .line 202
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-virtual {v3}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->getUuidInWorking()Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, "currentUuid":Ljava/lang/String;
    if-eqz v0, :cond_0

    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/parrot/freeflight/flightplan/model/SavedPlanParser;->SAVEPLAN_LIST_FOLDER:Ljava/lang/String;

    invoke-direct {v3, v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_2

    .line 204
    :cond_0
    new-instance v2, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$9;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$9;-><init>(Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;)V

    .line 210
    .local v2, "saveActionListener":Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$ActionToDoListener;
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->getTitleBeforeExecute(Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$ActionToDoListener;Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$ActionToDoListener;)V

    .line 218
    .end local v2    # "saveActionListener":Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$ActionToDoListener;
    :cond_1
    :goto_0
    return-void

    .line 211
    :cond_2
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-virtual {v3}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->isPlanSaved()Z

    move-result v3

    if-nez v3, :cond_1

    .line 212
    invoke-direct {p0, v0}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->findMetaDataIndexForUUID(Ljava/lang/String;)I

    move-result v1

    .line 213
    .local v1, "metaDataIndex":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 214
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->mAdapter:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkListAdapter;

    invoke-virtual {v3, v1}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;

    invoke-virtual {v3}, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->getUuid()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-virtual {v4}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->getGeneralInfo()Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->requestSaveCurrentState(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->mAdapter:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkListAdapter;

    invoke-virtual {v3}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private requestSaveCurrentState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "uuid"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "title"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 242
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->getGeneralInfo()Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;

    move-result-object v0

    .line 243
    .local v0, "info":Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 244
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->mSnapshot:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    .line 245
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 246
    .local v1, "opt":Landroid/graphics/BitmapFactory$Options;
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 247
    sget-object v2, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->TEMP_SNAPSHOT:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->mSnapshot:Landroid/graphics/Bitmap;

    .line 250
    .end local v1    # "opt":Landroid/graphics/BitmapFactory$Options;
    :cond_0
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->mSnapshot:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 251
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->mSnapshot:Landroid/graphics/Bitmap;

    invoke-static {p1}, Lcom/parrot/freeflight/flightplan/model/SavedPlanParser;->getSavedPlanScreenshotFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/parrot/freeflight/flightplan/ui/SnapshotSaver;->save(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 252
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->mAdapter:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkListAdapter;

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkListAdapter;->forceUpdateBitmap()V

    .line 255
    :cond_1
    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->setUuid(Ljava/lang/String;)V

    .line 257
    :cond_2
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->setProduct(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)V

    .line 258
    invoke-virtual {v0, p2}, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->setTitle(Ljava/lang/String;)V

    .line 259
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->setDate(Ljava/util/Date;)V

    .line 260
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->mMapInfo:Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;

    if-eqz v2, :cond_3

    .line 261
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->mMapInfo:Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->setMapInfo(Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;)V

    .line 264
    :cond_3
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-virtual {v2, p1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->saveCurrentState(Ljava/lang/String;)V

    .line 265
    return-void
.end method

.method private save(Ljava/lang/String;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 231
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, "uuid":Ljava/lang/String;
    invoke-direct {p0, v0, p1}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->requestSaveCurrentState(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->mSaveAsButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 235
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/parrot/freeflight/flightplan/model/SavedPlanParser;->CACHED_MAVLINK_FILE_PATH:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 237
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->mAdapter:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkListAdapter;

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->getGeneralInfo()Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->clone()Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkListAdapter;->add(Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;)V

    .line 238
    invoke-direct {p0, v0}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->findMetaDataIndexForUUID(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->setSelectedItemPosition(I)V

    .line 239
    return-void
.end method

.method private setSelectedItemPosition(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 314
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->mAdapter:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkListAdapter;

    if-eqz v0, :cond_1

    .line 315
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->mAdapter:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkListAdapter;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkListAdapter;->setSelectedPosition(I)V

    .line 316
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 317
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->showRightButtons()V

    .line 324
    :goto_0
    return-void

    .line 319
    :cond_0
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->hideRightButtons()V

    goto :goto_0

    .line 322
    :cond_1
    sget-object v0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->TAG:Ljava/lang/String;

    const-string v1, "Adapter is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showDeleteConfirmationDialog(I)V
    .locals 3
    .param p1, "selectedItemPosition"    # I

    .prologue
    .line 337
    if-ltz p1, :cond_0

    .line 338
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    const v1, 0x7f120009

    invoke-direct {v0, p0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 340
    .local v0, "dialogBuilder":Landroid/support/v7/app/AlertDialog$Builder;
    const v1, 0x7f110193

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 342
    const v1, 0x7f11012c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 343
    const v1, 0x7f1104d4

    new-instance v2, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$12;

    invoke-direct {v2, p0, p1}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$12;-><init>(Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;I)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 363
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 365
    .end local v0    # "dialogBuilder":Landroid/support/v7/app/AlertDialog$Builder;
    :cond_0
    return-void
.end method

.method private showRightButtons()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 332
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->mDeleteButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 333
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->mLoadButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 334
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 86
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    const v7, 0x7f0c0046

    invoke-virtual {p0, v7}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->setContentView(I)V

    .line 91
    const v7, 0x7f0a0053

    invoke-virtual {p0, v7}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 93
    .local v0, "backButton":Landroid/widget/ImageButton;
    new-instance v7, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$1;

    invoke-direct {v7, p0}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$1;-><init>(Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;)V

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    const v7, 0x7f0a0196

    invoke-virtual {p0, v7}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    .line 102
    .local v1, "gridView":Landroid/widget/GridView;
    invoke-static {}, Lcom/parrot/freeflight/flightplan/model/SavedPlanParser;->getAllSavedPlanGeneralInfos()Ljava/util/List;

    move-result-object v5

    .line 104
    .local v5, "savedPlanItems":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;>;"
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "KEY_EXTRA_PRODUCT"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v7}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->getFromValue(I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v7

    iput-object v7, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 105
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "KEY_EXTRA_MAP_INFO"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;

    iput-object v7, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->mMapInfo:Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;

    .line 107
    new-instance v7, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkListAdapter;

    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, -0x1

    invoke-direct {v7, v8, v9, v5}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkListAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v7, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->mAdapter:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkListAdapter;

    .line 108
    iget-object v7, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->mAdapter:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkListAdapter;

    invoke-virtual {v1, v7}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 109
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/widget/GridView;->setChoiceMode(I)V

    .line 111
    new-instance v7, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$2;

    invoke-direct {v7, p0}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$2;-><init>(Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;)V

    invoke-virtual {v1, v7}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 124
    const v7, 0x7f0a009f

    invoke-virtual {p0, v7}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 125
    .local v3, "newButton":Landroid/widget/Button;
    new-instance v7, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$3;

    invoke-direct {v7, p0}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$3;-><init>(Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;)V

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    const v7, 0x7f0a00b7

    invoke-virtual {p0, v7}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 132
    .local v4, "saveButton":Landroid/widget/Button;
    new-instance v7, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$4;

    invoke-direct {v7, p0}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$4;-><init>(Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;)V

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    const v7, 0x7f0a00b8

    invoke-virtual {p0, v7}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->mSaveAsButton:Landroid/widget/Button;

    .line 139
    iget-object v7, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->mSaveAsButton:Landroid/widget/Button;

    new-instance v8, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$5;

    invoke-direct {v8, p0}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$5;-><init>(Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    const v7, 0x7f0a0065

    invoke-virtual {p0, v7}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->mDeleteButton:Landroid/widget/Button;

    .line 146
    iget-object v7, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->mDeleteButton:Landroid/widget/Button;

    new-instance v8, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$6;

    invoke-direct {v8, p0}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$6;-><init>(Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    const v7, 0x7f0a0085

    invoke-virtual {p0, v7}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->mLoadButton:Landroid/widget/Button;

    .line 153
    iget-object v7, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->mLoadButton:Landroid/widget/Button;

    new-instance v8, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$7;

    invoke-direct {v8, p0}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$7;-><init>(Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->getInstance(Landroid/content/Context;)Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    move-result-object v7

    iput-object v7, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    .line 162
    if-eqz p1, :cond_1

    .line 163
    const-string v7, "KEY_SELECTED_PLAN_POSITION"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-direct {p0, v7}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->setSelectedItemPosition(I)V

    .line 169
    :goto_0
    const v7, 0x7f0a04c8

    invoke-virtual {p0, v7}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 171
    .local v6, "titleTextView":Landroid/widget/TextView;
    invoke-static {p0, v6}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 172
    invoke-static {p0, v3}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 173
    invoke-static {p0, v4}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 174
    iget-object v7, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->mSaveAsButton:Landroid/widget/Button;

    invoke-static {p0, v7}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 175
    iget-object v7, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->mDeleteButton:Landroid/widget/Button;

    invoke-static {p0, v7}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 176
    iget-object v7, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->mLoadButton:Landroid/widget/Button;

    invoke-static {p0, v7}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 178
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    if-ge v7, v8, :cond_0

    .line 179
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 181
    :cond_0
    return-void

    .line 165
    .end local v6    # "titleTextView":Landroid/widget/TextView;
    :cond_1
    iget-object v7, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-virtual {v7}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->getUuidInWorking()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->findMetaDataIndexForUUID(Ljava/lang/String;)I

    move-result v2

    .line 166
    .local v2, "itemSelectedIndex":I
    invoke-direct {p0, v2}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->setSelectedItemPosition(I)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 185
    sget-object v0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const-string v0, "KEY_SELECTED_PLAN_POSITION"

    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 187
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 188
    return-void
.end method
