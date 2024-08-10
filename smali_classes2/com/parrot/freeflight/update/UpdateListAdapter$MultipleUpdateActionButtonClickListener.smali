.class Lcom/parrot/freeflight/update/UpdateListAdapter$MultipleUpdateActionButtonClickListener;
.super Ljava/lang/Object;
.source "UpdateListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/update/UpdateListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MultipleUpdateActionButtonClickListener"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mDeviceVersion:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mNeedTrampolineUpdate:Z

.field private final mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mProductUid:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mProductVersion:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "productUid"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "productVersion"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "deviceVersion"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6, "needTrampolineUpdate"    # Z

    .prologue
    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    iput-object p2, p0, Lcom/parrot/freeflight/update/UpdateListAdapter$MultipleUpdateActionButtonClickListener;->mProductUid:Ljava/lang/String;

    .line 251
    iput-object p1, p0, Lcom/parrot/freeflight/update/UpdateListAdapter$MultipleUpdateActionButtonClickListener;->mContext:Landroid/content/Context;

    .line 252
    iput-object p3, p0, Lcom/parrot/freeflight/update/UpdateListAdapter$MultipleUpdateActionButtonClickListener;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 253
    iput-object p4, p0, Lcom/parrot/freeflight/update/UpdateListAdapter$MultipleUpdateActionButtonClickListener;->mProductVersion:Ljava/lang/String;

    .line 254
    iput-object p5, p0, Lcom/parrot/freeflight/update/UpdateListAdapter$MultipleUpdateActionButtonClickListener;->mDeviceVersion:Ljava/lang/String;

    .line 255
    iput-boolean p6, p0, Lcom/parrot/freeflight/update/UpdateListAdapter$MultipleUpdateActionButtonClickListener;->mNeedTrampolineUpdate:Z

    .line 256
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;Ljava/lang/String;ZLcom/parrot/freeflight/update/UpdateListAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Ljava/lang/String;
    .param p6, "x5"    # Z
    .param p7, "x6"    # Lcom/parrot/freeflight/update/UpdateListAdapter$1;

    .prologue
    .line 229
    invoke-direct/range {p0 .. p6}, Lcom/parrot/freeflight/update/UpdateListAdapter$MultipleUpdateActionButtonClickListener;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v10, 0x0

    .line 260
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/parrot/freeflight/update/UpdateListAdapter$MultipleUpdateActionButtonClickListener;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/parrot/freeflight/update/UpdateListAdapter$MultipleUpdateActionButtonClickListener;->mContext:Landroid/content/Context;

    const v3, 0x7f110767

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/parrot/freeflight/update/UpdateListAdapter$MultipleUpdateActionButtonClickListener;->mDeviceVersion:Ljava/lang/String;

    aput-object v6, v4, v5

    .line 261
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f11012c

    .line 262
    invoke-virtual {v1, v2, v10}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f110762

    new-instance v3, Lcom/parrot/freeflight/update/UpdateListAdapter$ActionButtonClickListener;

    iget-object v4, p0, Lcom/parrot/freeflight/update/UpdateListAdapter$MultipleUpdateActionButtonClickListener;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/parrot/freeflight/update/UpdateListAdapter$MultipleUpdateActionButtonClickListener;->mProductUid:Ljava/lang/String;

    iget-object v6, p0, Lcom/parrot/freeflight/update/UpdateListAdapter$MultipleUpdateActionButtonClickListener;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    iget-object v7, p0, Lcom/parrot/freeflight/update/UpdateListAdapter$MultipleUpdateActionButtonClickListener;->mProductVersion:Ljava/lang/String;

    iget-object v8, p0, Lcom/parrot/freeflight/update/UpdateListAdapter$MultipleUpdateActionButtonClickListener;->mDeviceVersion:Ljava/lang/String;

    iget-boolean v9, p0, Lcom/parrot/freeflight/update/UpdateListAdapter$MultipleUpdateActionButtonClickListener;->mNeedTrampolineUpdate:Z

    .line 263
    invoke-static {v5, v6, v7, v8, v9}, Lcom/parrot/freeflight/update/UpdaterEventArgsFactory;->createUploadArgs(Ljava/lang/String;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v5

    invoke-direct {v3, v4, v5, v10}, Lcom/parrot/freeflight/update/UpdateListAdapter$ActionButtonClickListener;-><init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/parrot/freeflight/update/UpdateListAdapter$1;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 264
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 265
    .local v0, "dialog":Landroid/support/v7/app/AlertDialog;
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 266
    return-void
.end method
