.class public Lcom/parrot/freeflight/update/UpdaterUiController;
.super Ljava/lang/Object;
.source "UpdaterUiController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/update/UpdaterUiController$OnBackButtonClickListener;
    }
.end annotation


# static fields
.field private static final PERCENT_100:I = 0x64

.field private static final PERCENT_50:I = 0x32

.field private static final PERCENT_75:I = 0x4b


# instance fields
.field private final mBackButton:Landroid/widget/ImageButton;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mCircularSlider:Lcom/parrot/freeflight/update/view/CircularSlider;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mController:Lcom/parrot/freeflight/update/UpdaterController;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mCurrentProgress:F

.field private mDialog:Landroid/support/v7/app/AlertDialog;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mFirmwareInstallCheckBox:Landroid/widget/CheckBox;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mFirmwareInstallTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mOnBackButtonClickListener:Lcom/parrot/freeflight/update/UpdaterUiController$OnBackButtonClickListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mProductFamily:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_FAMILY_ENUM;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mProductResetCheckBox:Landroid/widget/CheckBox;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mProductResetTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mProductVersion:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mSendingVersionCheckBox:Landroid/widget/CheckBox;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mSendingVersionTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mState:Lcom/parrot/freeflight/update/UpdaterController$State;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/Window;Lcom/parrot/freeflight/update/UpdaterController;Landroid/os/Bundle;Lcom/parrot/freeflight/update/UpdaterUiController$OnBackButtonClickListener;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "activityWindow"    # Landroid/view/Window;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "controller"    # Lcom/parrot/freeflight/update/UpdaterController;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "arguments"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "backButtonClickListener"    # Lcom/parrot/freeflight/update/UpdaterUiController$OnBackButtonClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const v9, 0x7f110684

    const/4 v8, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    sget-object v6, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_UNKNOWN:Lcom/parrot/freeflight/update/UpdaterController$State;

    iput-object v6, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mState:Lcom/parrot/freeflight/update/UpdaterController$State;

    .line 88
    iput-object p1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mContext:Landroid/content/Context;

    .line 89
    iput-object p5, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mOnBackButtonClickListener:Lcom/parrot/freeflight/update/UpdaterUiController$OnBackButtonClickListener;

    .line 90
    const v6, 0x7f0a04c8

    invoke-virtual {p2, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 91
    .local v5, "titleTextView":Landroid/widget/TextView;
    const v6, 0x7f0a0053

    invoke-virtual {p2, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mBackButton:Landroid/widget/ImageButton;

    .line 92
    const v6, 0x7f0a00d7

    invoke-virtual {p2, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    iput-object v6, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mSendingVersionCheckBox:Landroid/widget/CheckBox;

    .line 93
    const v6, 0x7f0a04b6

    invoke-virtual {p2, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mSendingVersionTextView:Landroid/widget/TextView;

    .line 94
    const v6, 0x7f0a00d8

    invoke-virtual {p2, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    iput-object v6, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mProductResetCheckBox:Landroid/widget/CheckBox;

    .line 95
    const v6, 0x7f0a04a8

    invoke-virtual {p2, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mProductResetTextView:Landroid/widget/TextView;

    .line 96
    const v6, 0x7f0a00d9

    invoke-virtual {p2, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    iput-object v6, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mFirmwareInstallCheckBox:Landroid/widget/CheckBox;

    .line 97
    const v6, 0x7f0a045e

    invoke-virtual {p2, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mFirmwareInstallTextView:Landroid/widget/TextView;

    .line 98
    const v6, 0x7f0a03fa

    invoke-virtual {p2, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/parrot/freeflight/update/view/CircularSlider;

    iput-object v6, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mCircularSlider:Lcom/parrot/freeflight/update/view/CircularSlider;

    .line 100
    iget-object v6, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mCircularSlider:Lcom/parrot/freeflight/update/view/CircularSlider;

    invoke-virtual {v6, v8}, Lcom/parrot/freeflight/update/view/CircularSlider;->setFocusable(Z)V

    .line 101
    iget-object v6, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mCircularSlider:Lcom/parrot/freeflight/update/view/CircularSlider;

    invoke-virtual {v6, v8}, Lcom/parrot/freeflight/update/view/CircularSlider;->setEnabled(Z)V

    .line 102
    new-instance v3, Ljava/text/DecimalFormatSymbols;

    invoke-direct {v3}, Ljava/text/DecimalFormatSymbols;-><init>()V

    .line 103
    .local v3, "otherSymbols":Ljava/text/DecimalFormatSymbols;
    const/16 v6, 0x2e

    invoke-virtual {v3, v6}, Ljava/text/DecimalFormatSymbols;->setDecimalSeparator(C)V

    .line 104
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v6, "#0.0"

    invoke-direct {v1, v6, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    .line 105
    .local v1, "df":Ljava/text/DecimalFormat;
    iget-object v6, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mCircularSlider:Lcom/parrot/freeflight/update/view/CircularSlider;

    new-instance v7, Lcom/parrot/freeflight/update/UpdaterUiController$1;

    invoke-direct {v7, p0, v1}, Lcom/parrot/freeflight/update/UpdaterUiController$1;-><init>(Lcom/parrot/freeflight/update/UpdaterUiController;Ljava/text/DecimalFormat;)V

    invoke-virtual {v6, v7}, Lcom/parrot/freeflight/update/view/CircularSlider;->setOnValueChangeListener(Lcom/parrot/freeflight/update/view/CircularSlider$OnValueChangeListener;)V

    .line 114
    iget-object v6, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mBackButton:Landroid/widget/ImageButton;

    new-instance v7, Lcom/parrot/freeflight/update/UpdaterUiController$2;

    invoke-direct {v7, p0}, Lcom/parrot/freeflight/update/UpdaterUiController$2;-><init>(Lcom/parrot/freeflight/update/UpdaterUiController;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    const v6, 0x7f0a00d6

    invoke-virtual {p2, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 123
    .local v0, "checkBoxLayout":Landroid/widget/LinearLayout;
    const-string v6, "UPDATE_EVENT_KEY"

    invoke-virtual {p4, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 124
    const-string v6, "UPDATE_EVENT_KEY"

    invoke-virtual {p4, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/parrot/freeflight/update/UpdaterController$Event;->valueOf(Ljava/lang/String;)Lcom/parrot/freeflight/update/UpdaterController$Event;

    move-result-object v2

    .line 125
    .local v2, "launchEvent":Lcom/parrot/freeflight/update/UpdaterController$Event;
    const-string v6, "UPDATE_TARGET_VERSION_KEY"

    invoke-virtual {p4, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mProductVersion:Ljava/lang/String;

    .line 127
    sget-object v6, Lcom/parrot/freeflight/update/UpdaterUiController$20;->$SwitchMap$com$parrot$freeflight$update$UpdaterController$Event:[I

    invoke-virtual {v2}, Lcom/parrot/freeflight/update/UpdaterController$Event;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 134
    const v6, 0x7f11076b

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 135
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 136
    iget-object v6, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mCircularSlider:Lcom/parrot/freeflight/update/view/CircularSlider;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mProductVersion:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/parrot/freeflight/update/view/CircularSlider;->setTitle(Ljava/lang/String;)V

    .line 137
    iget-object v6, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mSendingVersionTextView:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mProductVersion:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    const-string v6, "UPDATE_PRODUCT_KEY"

    invoke-virtual {p4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->getFromValue(I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v4

    .line 140
    .local v4, "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    invoke-static {v4}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductFamily(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_FAMILY_ENUM;

    move-result-object v6

    iput-object v6, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mProductFamily:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_FAMILY_ENUM;

    .line 141
    sget-object v6, Lcom/parrot/freeflight/update/UpdaterUiController$20;->$SwitchMap$com$parrot$arsdk$ardiscovery$ARDISCOVERY_PRODUCT_FAMILY_ENUM:[I

    iget-object v7, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mProductFamily:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_FAMILY_ENUM;

    invoke-virtual {v7}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_FAMILY_ENUM;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_1

    .line 147
    iget-object v6, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mProductResetTextView:Landroid/widget/TextView;

    const v7, 0x7f1101d1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 154
    .end local v2    # "launchEvent":Lcom/parrot/freeflight/update/UpdaterController$Event;
    .end local v4    # "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mCircularSlider:Lcom/parrot/freeflight/update/view/CircularSlider;

    iget-object v7, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/parrot/freeflight/util/ui/FontUtils$TYPEFACE;->getFont(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/parrot/freeflight/update/view/CircularSlider;->setTypeface(Landroid/graphics/Typeface;)V

    .line 155
    iget-object v6, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 156
    iget-object v6, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mSendingVersionTextView:Landroid/widget/TextView;

    invoke-static {v6, v7}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 157
    iget-object v6, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mProductResetTextView:Landroid/widget/TextView;

    invoke-static {v6, v7}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 158
    iget-object v6, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mFirmwareInstallTextView:Landroid/widget/TextView;

    invoke-static {v6, v7}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 159
    iget-object v6, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v6}, Lcom/parrot/freeflight/update/UpdaterUiController;->fixPreLollipopTheme(Landroid/content/Context;)V

    .line 161
    iput-object p3, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mController:Lcom/parrot/freeflight/update/UpdaterController;

    .line 162
    iget-object v6, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mController:Lcom/parrot/freeflight/update/UpdaterController;

    new-instance v7, Lcom/parrot/freeflight/update/UpdaterUiController$3;

    invoke-direct {v7, p0}, Lcom/parrot/freeflight/update/UpdaterUiController$3;-><init>(Lcom/parrot/freeflight/update/UpdaterUiController;)V

    invoke-virtual {v6, v7}, Lcom/parrot/freeflight/update/UpdaterController;->setStateListener(Lcom/parrot/freeflight/update/UpdaterController$StateListener;)V

    .line 171
    iget-object v6, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mController:Lcom/parrot/freeflight/update/UpdaterController;

    new-instance v7, Lcom/parrot/freeflight/update/UpdaterUiController$4;

    invoke-direct {v7, p0}, Lcom/parrot/freeflight/update/UpdaterUiController$4;-><init>(Lcom/parrot/freeflight/update/UpdaterUiController;)V

    invoke-virtual {v6, v7}, Lcom/parrot/freeflight/update/UpdaterController;->setProgressListener(Lcom/parrot/freeflight/update/UpdaterController$ProgressListener;)V

    .line 185
    iget-object v6, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mController:Lcom/parrot/freeflight/update/UpdaterController;

    new-instance v7, Lcom/parrot/freeflight/update/UpdaterUiController$5;

    invoke-direct {v7, p0}, Lcom/parrot/freeflight/update/UpdaterUiController$5;-><init>(Lcom/parrot/freeflight/update/UpdaterUiController;)V

    invoke-virtual {v6, v7}, Lcom/parrot/freeflight/update/UpdaterController;->setProcessingListener(Lcom/parrot/freeflight/update/UpdaterController$ProcessingListener;)V

    .line 207
    return-void

    .line 129
    .restart local v2    # "launchEvent":Lcom/parrot/freeflight/update/UpdaterController$Event;
    :pswitch_0
    const v6, 0x7f1101ba

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 130
    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 131
    iget-object v6, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mCircularSlider:Lcom/parrot/freeflight/update/view/CircularSlider;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mContext:Landroid/content/Context;

    const v9, 0x7f1101b8

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mProductVersion:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/parrot/freeflight/update/view/CircularSlider;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 144
    .restart local v4    # "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    :pswitch_1
    iget-object v6, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mProductResetTextView:Landroid/widget/TextView;

    const v7, 0x7f11063e

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 141
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/update/UpdaterUiController;)Lcom/parrot/freeflight/update/UpdaterController$State;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/update/UpdaterUiController;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mState:Lcom/parrot/freeflight/update/UpdaterController$State;

    return-object v0
.end method

.method static synthetic access$002(Lcom/parrot/freeflight/update/UpdaterUiController;Lcom/parrot/freeflight/update/UpdaterController$State;)Lcom/parrot/freeflight/update/UpdaterController$State;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/update/UpdaterUiController;
    .param p1, "x1"    # Lcom/parrot/freeflight/update/UpdaterController$State;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mState:Lcom/parrot/freeflight/update/UpdaterController$State;

    return-object p1
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/update/UpdaterUiController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/update/UpdaterUiController;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterUiController;->updateView()V

    return-void
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/update/UpdaterUiController;)F
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/update/UpdaterUiController;

    .prologue
    .line 33
    iget v0, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mCurrentProgress:F

    return v0
.end method

.method static synthetic access$202(Lcom/parrot/freeflight/update/UpdaterUiController;F)F
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/update/UpdaterUiController;
    .param p1, "x1"    # F

    .prologue
    .line 33
    iput p1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mCurrentProgress:F

    return p1
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/update/UpdaterUiController;)Lcom/parrot/freeflight/update/view/CircularSlider;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/update/UpdaterUiController;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mCircularSlider:Lcom/parrot/freeflight/update/view/CircularSlider;

    return-object v0
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/update/UpdaterUiController;)Lcom/parrot/freeflight/update/UpdaterController;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/update/UpdaterUiController;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mController:Lcom/parrot/freeflight/update/UpdaterController;

    return-object v0
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/update/UpdaterUiController;Lcom/parrot/freeflight/update/task/AvailableUpdate;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/update/UpdaterUiController;
    .param p1, "x1"    # Lcom/parrot/freeflight/update/task/AvailableUpdate;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/update/UpdaterUiController;->showWarningEraseDataDialog(Lcom/parrot/freeflight/update/task/AvailableUpdate;)V

    return-void
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/update/UpdaterUiController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/update/UpdaterUiController;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterUiController;->showAskingConnectDroneDialog()V

    return-void
.end method

.method private fixPreLollipopTheme(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 274
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 275
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mBackButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mBackButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 277
    :cond_0
    return-void
.end method

.method private showAskingConnectDroneDialog()V
    .locals 4

    .prologue
    .line 389
    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 390
    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 391
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDialog:Landroid/support/v7/app/AlertDialog;

    .line 393
    :cond_0
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mContext:Landroid/content/Context;

    const v2, 0x7f120008

    invoke-direct {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 394
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    const v1, 0x7f11075f

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 395
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f110162

    .line 396
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f1104d4

    new-instance v3, Lcom/parrot/freeflight/update/UpdaterUiController$10;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/update/UpdaterUiController$10;-><init>(Lcom/parrot/freeflight/update/UpdaterUiController;)V

    .line 397
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 403
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDialog:Landroid/support/v7/app/AlertDialog;

    .line 404
    return-void
.end method

.method private showAskingUploadingDialog()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 407
    iget-object v7, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v7, :cond_0

    .line 408
    iget-object v7, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v7}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 409
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDialog:Landroid/support/v7/app/AlertDialog;

    .line 411
    :cond_0
    iget-object v7, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mController:Lcom/parrot/freeflight/update/UpdaterController;

    invoke-virtual {v7}, Lcom/parrot/freeflight/update/UpdaterController;->getAvailableUpdateList()Ljava/util/List;

    move-result-object v0

    .line 412
    .local v0, "availableUpdateList":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/update/task/AvailableUpdate;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    new-array v3, v7, [Ljava/lang/String;

    .line 413
    .local v3, "items":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v5, v3

    .local v5, "size":I
    :goto_0
    if-ge v2, v5, :cond_1

    .line 414
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/parrot/freeflight/update/task/AvailableUpdate;

    .line 415
    .local v6, "update":Lcom/parrot/freeflight/update/task/AvailableUpdate;
    const-string v7, "%s\n%s -> %s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, v6, Lcom/parrot/freeflight/update/task/AvailableUpdate;->product:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-static {v9}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductName(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    const/4 v9, 0x1

    iget-object v10, v6, Lcom/parrot/freeflight/update/task/AvailableUpdate;->originalVersion:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x2

    iget-object v10, v6, Lcom/parrot/freeflight/update/task/AvailableUpdate;->version:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v2

    .line 413
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 419
    .end local v6    # "update":Lcom/parrot/freeflight/update/task/AvailableUpdate;
    :cond_1
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mContext:Landroid/content/Context;

    const v8, 0x7f120008

    invoke-direct {v1, v7, v8}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 420
    .local v1, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 421
    .local v4, "productToUpdateList":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/update/task/AvailableUpdate;>;"
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 422
    const v7, 0x7f110768

    invoke-virtual {v1, v7}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v7

    .line 423
    invoke-virtual {v7, v11}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/parrot/freeflight/update/UpdaterUiController$13;

    invoke-direct {v8, p0, v4, v0}, Lcom/parrot/freeflight/update/UpdaterUiController$13;-><init>(Lcom/parrot/freeflight/update/UpdaterUiController;Ljava/util/List;Ljava/util/List;)V

    .line 424
    invoke-virtual {v7, v3, v11, v8}, Landroid/support/v7/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f1104d4

    new-instance v9, Lcom/parrot/freeflight/update/UpdaterUiController$12;

    invoke-direct {v9, p0, v4}, Lcom/parrot/freeflight/update/UpdaterUiController$12;-><init>(Lcom/parrot/freeflight/update/UpdaterUiController;Ljava/util/List;)V

    .line 431
    invoke-virtual {v7, v8, v9}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f11012c

    new-instance v9, Lcom/parrot/freeflight/update/UpdaterUiController$11;

    invoke-direct {v9, p0}, Lcom/parrot/freeflight/update/UpdaterUiController$11;-><init>(Lcom/parrot/freeflight/update/UpdaterUiController;)V

    .line 442
    invoke-virtual {v7, v8, v9}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 448
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDialog:Landroid/support/v7/app/AlertDialog;

    .line 449
    return-void
.end method

.method private showDownloadingFailedDialog()V
    .locals 4

    .prologue
    .line 365
    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 366
    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 367
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDialog:Landroid/support/v7/app/AlertDialog;

    .line 369
    :cond_0
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mContext:Landroid/content/Context;

    const v2, 0x7f120008

    invoke-direct {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 370
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    const v1, 0x7f11075f

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 371
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f1101b9

    .line 372
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f1104d4

    new-instance v3, Lcom/parrot/freeflight/update/UpdaterUiController$9;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/update/UpdaterUiController$9;-><init>(Lcom/parrot/freeflight/update/UpdaterUiController;)V

    .line 373
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f11012c

    new-instance v3, Lcom/parrot/freeflight/update/UpdaterUiController$8;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/update/UpdaterUiController$8;-><init>(Lcom/parrot/freeflight/update/UpdaterUiController;)V

    .line 379
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 385
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDialog:Landroid/support/v7/app/AlertDialog;

    .line 386
    return-void
.end method

.method private showNoDroneDialog()V
    .locals 4

    .prologue
    .line 347
    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 348
    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 349
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDialog:Landroid/support/v7/app/AlertDialog;

    .line 351
    :cond_0
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mContext:Landroid/content/Context;

    const v2, 0x7f120008

    invoke-direct {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 352
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    const v1, 0x7f11075f

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 353
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f1104c7

    .line 354
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f1104d4

    new-instance v3, Lcom/parrot/freeflight/update/UpdaterUiController$7;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/update/UpdaterUiController$7;-><init>(Lcom/parrot/freeflight/update/UpdaterUiController;)V

    .line 355
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 361
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDialog:Landroid/support/v7/app/AlertDialog;

    .line 362
    return-void
.end method

.method private showNoInternetDialog()V
    .locals 4

    .prologue
    .line 329
    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 330
    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 331
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDialog:Landroid/support/v7/app/AlertDialog;

    .line 333
    :cond_0
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mContext:Landroid/content/Context;

    const v2, 0x7f120008

    invoke-direct {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 334
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    const v1, 0x7f11075f

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 335
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f110160

    .line 336
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f1104d4

    new-instance v3, Lcom/parrot/freeflight/update/UpdaterUiController$6;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/update/UpdaterUiController$6;-><init>(Lcom/parrot/freeflight/update/UpdaterUiController;)V

    .line 337
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 343
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDialog:Landroid/support/v7/app/AlertDialog;

    .line 344
    return-void
.end method

.method private showUploadingFailedDialog()V
    .locals 7

    .prologue
    const v6, 0x7f11075f

    const v5, 0x7f1104d4

    const/4 v4, 0x0

    .line 494
    iget-object v2, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v2, :cond_0

    .line 495
    iget-object v2, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 496
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDialog:Landroid/support/v7/app/AlertDialog;

    .line 498
    :cond_0
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mContext:Landroid/content/Context;

    const v3, 0x7f120008

    invoke-direct {v0, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 499
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mController:Lcom/parrot/freeflight/update/UpdaterController;

    invoke-virtual {v2}, Lcom/parrot/freeflight/update/UpdaterController;->isDeviceReadyForUpload()Z

    move-result v1

    .line 500
    .local v1, "deviceConnected":Z
    if-eqz v1, :cond_1

    .line 501
    invoke-virtual {v0, v6}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    .line 502
    invoke-virtual {v2, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f110775

    .line 503
    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/parrot/freeflight/update/UpdaterUiController$18;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/update/UpdaterUiController$18;-><init>(Lcom/parrot/freeflight/update/UpdaterUiController;)V

    .line 504
    invoke-virtual {v2, v5, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f11012c

    new-instance v4, Lcom/parrot/freeflight/update/UpdaterUiController$17;

    invoke-direct {v4, p0}, Lcom/parrot/freeflight/update/UpdaterUiController$17;-><init>(Lcom/parrot/freeflight/update/UpdaterUiController;)V

    .line 514
    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 531
    :goto_0
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDialog:Landroid/support/v7/app/AlertDialog;

    .line 532
    return-void

    .line 521
    :cond_1
    invoke-virtual {v0, v6}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    .line 522
    invoke-virtual {v2, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f110162

    .line 523
    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/parrot/freeflight/update/UpdaterUiController$19;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/update/UpdaterUiController$19;-><init>(Lcom/parrot/freeflight/update/UpdaterUiController;)V

    .line 524
    invoke-virtual {v2, v5, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method private showWaitingPairingDialog()V
    .locals 4

    .prologue
    .line 476
    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 477
    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 478
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDialog:Landroid/support/v7/app/AlertDialog;

    .line 480
    :cond_0
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mContext:Landroid/content/Context;

    const v2, 0x7f120008

    invoke-direct {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 481
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    const v1, 0x7f11075f

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 482
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f1105a8

    .line 483
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f11012c

    new-instance v3, Lcom/parrot/freeflight/update/UpdaterUiController$16;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/update/UpdaterUiController$16;-><init>(Lcom/parrot/freeflight/update/UpdaterUiController;)V

    .line 484
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 490
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDialog:Landroid/support/v7/app/AlertDialog;

    .line 491
    return-void
.end method

.method private showWarningEraseDataDialog(Lcom/parrot/freeflight/update/task/AvailableUpdate;)V
    .locals 4
    .param p1, "update"    # Lcom/parrot/freeflight/update/task/AvailableUpdate;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const v3, 0x7f11075f

    .line 452
    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 453
    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 454
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDialog:Landroid/support/v7/app/AlertDialog;

    .line 456
    :cond_0
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mContext:Landroid/content/Context;

    const v2, 0x7f120008

    invoke-direct {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 457
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v0, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 458
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f1107ab

    .line 459
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/parrot/freeflight/update/UpdaterUiController$15;

    invoke-direct {v2, p0, p1}, Lcom/parrot/freeflight/update/UpdaterUiController$15;-><init>(Lcom/parrot/freeflight/update/UpdaterUiController;Lcom/parrot/freeflight/update/task/AvailableUpdate;)V

    .line 460
    invoke-virtual {v1, v3, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f11012c

    new-instance v3, Lcom/parrot/freeflight/update/UpdaterUiController$14;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/update/UpdaterUiController$14;-><init>(Lcom/parrot/freeflight/update/UpdaterUiController;)V

    .line 466
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 472
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDialog:Landroid/support/v7/app/AlertDialog;

    .line 473
    return-void
.end method

.method private updateSlider()V
    .locals 4

    .prologue
    .line 280
    sget-object v0, Lcom/parrot/freeflight/update/UpdaterUiController$20;->$SwitchMap$com$parrot$freeflight$update$UpdaterController$State:[I

    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mState:Lcom/parrot/freeflight/update/UpdaterController$State;

    invoke-virtual {v1}, Lcom/parrot/freeflight/update/UpdaterController$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 304
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 282
    :pswitch_1
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mCircularSlider:Lcom/parrot/freeflight/update/view/CircularSlider;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mContext:Landroid/content/Context;

    const v3, 0x7f1101b8

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mProductVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/update/view/CircularSlider;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 285
    :pswitch_2
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mCircularSlider:Lcom/parrot/freeflight/update/view/CircularSlider;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mContext:Landroid/content/Context;

    const v3, 0x7f110684

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mProductVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/update/view/CircularSlider;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 288
    :pswitch_3
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mProductFamily:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_FAMILY_ENUM;

    if-eqz v0, :cond_0

    .line 289
    sget-object v0, Lcom/parrot/freeflight/update/UpdaterUiController$20;->$SwitchMap$com$parrot$arsdk$ardiscovery$ARDISCOVERY_PRODUCT_FAMILY_ENUM:[I

    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mProductFamily:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_FAMILY_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_FAMILY_ENUM;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 295
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mCircularSlider:Lcom/parrot/freeflight/update/view/CircularSlider;

    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mContext:Landroid/content/Context;

    const v2, 0x7f1101d1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/update/view/CircularSlider;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 292
    :pswitch_4
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mCircularSlider:Lcom/parrot/freeflight/update/view/CircularSlider;

    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mContext:Landroid/content/Context;

    const v2, 0x7f11063e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/update/view/CircularSlider;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 301
    :pswitch_5
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mCircularSlider:Lcom/parrot/freeflight/update/view/CircularSlider;

    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mContext:Landroid/content/Context;

    const v2, 0x7f110360

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/update/view/CircularSlider;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 280
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_5
    .end packed-switch

    .line 289
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private updateStep()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 307
    iget-object v6, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mState:Lcom/parrot/freeflight/update/UpdaterController$State;

    sget-object v7, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_CLOSED:Lcom/parrot/freeflight/update/UpdaterController$State;

    if-eq v6, v7, :cond_0

    .line 308
    iget-object v6, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mState:Lcom/parrot/freeflight/update/UpdaterController$State;

    invoke-virtual {v6}, Lcom/parrot/freeflight/update/UpdaterController$State;->ordinal()I

    move-result v3

    .line 310
    .local v3, "stateOrdinal":I
    sget-object v6, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_UPLOADING:Lcom/parrot/freeflight/update/UpdaterController$State;

    invoke-virtual {v6}, Lcom/parrot/freeflight/update/UpdaterController$State;->ordinal()I

    move-result v6

    if-lt v3, v6, :cond_1

    move v2, v4

    .line 311
    .local v2, "sendingVersionEnabled":Z
    :goto_0
    sget-object v6, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_PRODUCT_RESET:Lcom/parrot/freeflight/update/UpdaterController$State;

    invoke-virtual {v6}, Lcom/parrot/freeflight/update/UpdaterController$State;->ordinal()I

    move-result v6

    if-lt v3, v6, :cond_2

    move v1, v4

    .line 312
    .local v1, "productResetEnabled":Z
    :goto_1
    sget-object v6, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_INSTALLING:Lcom/parrot/freeflight/update/UpdaterController$State;

    invoke-virtual {v6}, Lcom/parrot/freeflight/update/UpdaterController$State;->ordinal()I

    move-result v6

    if-lt v3, v6, :cond_3

    move v0, v4

    .line 314
    .local v0, "firmwareInstallEnabled":Z
    :goto_2
    iget-object v4, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mSendingVersionTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 315
    iget-object v4, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mSendingVersionCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 316
    iget-object v4, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mSendingVersionCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 318
    iget-object v4, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mProductResetTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 319
    iget-object v4, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mProductResetCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 320
    iget-object v4, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mProductResetCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 322
    iget-object v4, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mFirmwareInstallTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 323
    iget-object v4, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mFirmwareInstallCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 324
    iget-object v4, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mFirmwareInstallCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 326
    .end local v0    # "firmwareInstallEnabled":Z
    .end local v1    # "productResetEnabled":Z
    .end local v2    # "sendingVersionEnabled":Z
    .end local v3    # "stateOrdinal":I
    :cond_0
    return-void

    .restart local v3    # "stateOrdinal":I
    :cond_1
    move v2, v5

    .line 310
    goto :goto_0

    .restart local v2    # "sendingVersionEnabled":Z
    :cond_2
    move v1, v5

    .line 311
    goto :goto_1

    .restart local v1    # "productResetEnabled":Z
    :cond_3
    move v0, v5

    .line 312
    goto :goto_2
.end method

.method private updateView()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 217
    sget-object v0, Lcom/parrot/freeflight/update/UpdaterUiController$20;->$SwitchMap$com$parrot$freeflight$update$UpdaterController$State:[I

    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mState:Lcom/parrot/freeflight/update/UpdaterController$State;

    invoke-virtual {v1}, Lcom/parrot/freeflight/update/UpdaterController$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 265
    :goto_0
    return-void

    .line 219
    :pswitch_0
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterUiController;->showNoDroneDialog()V

    goto :goto_0

    .line 222
    :pswitch_1
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterUiController;->showNoInternetDialog()V

    goto :goto_0

    .line 225
    :pswitch_2
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterUiController;->updateSlider()V

    goto :goto_0

    .line 228
    :pswitch_3
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterUiController;->showDownloadingFailedDialog()V

    goto :goto_0

    .line 231
    :pswitch_4
    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/update/UpdaterUiController;->onBackPressed(Z)V

    goto :goto_0

    .line 234
    :pswitch_5
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterUiController;->showAskingUploadingDialog()V

    goto :goto_0

    .line 237
    :pswitch_6
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterUiController;->updateStep()V

    .line 238
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 240
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDialog:Landroid/support/v7/app/AlertDialog;

    .line 242
    :cond_0
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterUiController;->updateSlider()V

    goto :goto_0

    .line 245
    :pswitch_7
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterUiController;->showWaitingPairingDialog()V

    goto :goto_0

    .line 248
    :pswitch_8
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterUiController;->showUploadingFailedDialog()V

    goto :goto_0

    .line 251
    :pswitch_9
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterUiController;->updateStep()V

    .line 252
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterUiController;->updateSlider()V

    .line 253
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mBackButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 256
    :pswitch_a
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterUiController;->updateStep()V

    .line 257
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterUiController;->updateSlider()V

    .line 258
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mBackButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 261
    :pswitch_b
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterUiController;->updateStep()V

    .line 262
    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/update/UpdaterUiController;->onBackPressed(Z)V

    goto :goto_0

    .line 217
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
    .end packed-switch
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mController:Lcom/parrot/freeflight/update/UpdaterController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/update/UpdaterController;->setStateListener(Lcom/parrot/freeflight/update/UpdaterController$StateListener;)V

    .line 214
    return-void
.end method

.method public onBackPressed(Z)V
    .locals 2
    .param p1, "success"    # Z

    .prologue
    .line 268
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mOnBackButtonClickListener:Lcom/parrot/freeflight/update/UpdaterUiController$OnBackButtonClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mState:Lcom/parrot/freeflight/update/UpdaterController$State;

    sget-object v1, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_PRODUCT_RESET:Lcom/parrot/freeflight/update/UpdaterController$State;

    if-eq v0, v1, :cond_0

    .line 269
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mOnBackButtonClickListener:Lcom/parrot/freeflight/update/UpdaterUiController$OnBackButtonClickListener;

    invoke-interface {v0, p1}, Lcom/parrot/freeflight/update/UpdaterUiController$OnBackButtonClickListener;->onBackButtonClick(Z)V

    .line 271
    :cond_0
    return-void
.end method
