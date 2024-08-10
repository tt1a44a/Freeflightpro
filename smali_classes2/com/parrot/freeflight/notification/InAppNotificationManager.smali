.class public Lcom/parrot/freeflight/notification/InAppNotificationManager;
.super Ljava/lang/Object;
.source "InAppNotificationManager.java"


# static fields
.field private static final MY_PARROT_NOTIFICATION_ID:Ljava/lang/String; = "my.parrot"

.field private static final MY_PARROT_TITLES:[I

.field private static final ONCE_MY_PARROT_DISMISSED:Ljava/lang/String; = "ONCE_MY_PARROT_DISMISSED"


# instance fields
.field private mAuthenticationManager:Lcom/parrot/freeflight/core/authentication/AuthenticationManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mCount:I

.field private mInAppNotificationList:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/notification/InAppNotification;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaNotification:Lcom/parrot/freeflight/notification/InAppNotification;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mOfferManager:Lcom/parrot/freeflight/offer/OfferManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mOffers:Ljava/util/Set;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/parrot/freeflight/offer/model/Offer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/parrot/freeflight/notification/InAppNotificationManager;->MY_PARROT_TITLES:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f110478
        0x7f110479
        0x7f11047a
        0x7f11047b
        0x7f11047c
        0x7f11047d
        0x7f11047e
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/parrot/freeflight/offer/OfferManager;Lcom/parrot/freeflight/core/authentication/AuthenticationManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "offerManager"    # Lcom/parrot/freeflight/offer/OfferManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "authenticationManager"    # Lcom/parrot/freeflight/core/authentication/AuthenticationManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/parrot/freeflight/notification/InAppNotificationManager;->mCount:I

    .line 61
    iput-object p1, p0, Lcom/parrot/freeflight/notification/InAppNotificationManager;->mContext:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lcom/parrot/freeflight/notification/InAppNotificationManager;->mOfferManager:Lcom/parrot/freeflight/offer/OfferManager;

    .line 63
    iput-object p3, p0, Lcom/parrot/freeflight/notification/InAppNotificationManager;->mAuthenticationManager:Lcom/parrot/freeflight/core/authentication/AuthenticationManager;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/notification/InAppNotificationManager;->mInAppNotificationList:Ljava/util/List;

    .line 66
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/notification/InAppNotificationManager;->mOffers:Ljava/util/Set;

    .line 67
    return-void
.end method

.method private createMyParrotNotification()Lcom/parrot/freeflight/notification/InAppNotification;
    .locals 10

    .prologue
    .line 75
    new-instance v8, Ljava/util/Random;

    invoke-direct {v8}, Ljava/util/Random;-><init>()V

    .line 76
    .local v8, "random":Ljava/util/Random;
    sget-object v0, Lcom/parrot/freeflight/notification/InAppNotificationManager;->MY_PARROT_TITLES:[I

    sget-object v1, Lcom/parrot/freeflight/notification/InAppNotificationManager;->MY_PARROT_TITLES:[I

    array-length v1, v1

    invoke-virtual {v8, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    aget v9, v0, v1

    .line 78
    .local v9, "randomTitle":I
    new-instance v0, Lcom/parrot/freeflight/notification/InAppNotification;

    const-string v1, "my.parrot"

    sget-object v2, Lcom/parrot/freeflight/notification/InAppNotification$Type;->MY_PARROT:Lcom/parrot/freeflight/notification/InAppNotification$Type;

    iget-object v3, p0, Lcom/parrot/freeflight/notification/InAppNotificationManager;->mContext:Landroid/content/Context;

    const v4, 0x7f1104cf

    .line 80
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/freeflight/notification/InAppNotificationManager;->mContext:Landroid/content/Context;

    const v5, 0x7f0500dd

    .line 81
    invoke-static {v4, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    iget-object v5, p0, Lcom/parrot/freeflight/notification/InAppNotificationManager;->mContext:Landroid/content/Context;

    .line 82
    invoke-virtual {v5, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/parrot/freeflight/notification/InAppNotification;-><init>(Ljava/lang/String;Lcom/parrot/freeflight/notification/InAppNotification$Type;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 78
    return-object v0
.end method

.method private updateNotificationList()V
    .locals 11

    .prologue
    .line 121
    iget-object v7, p0, Lcom/parrot/freeflight/notification/InAppNotificationManager;->mInAppNotificationList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 123
    iget-object v7, p0, Lcom/parrot/freeflight/notification/InAppNotificationManager;->mMediaNotification:Lcom/parrot/freeflight/notification/InAppNotification;

    if-eqz v7, :cond_0

    .line 124
    iget-object v7, p0, Lcom/parrot/freeflight/notification/InAppNotificationManager;->mInAppNotificationList:Ljava/util/List;

    iget-object v8, p0, Lcom/parrot/freeflight/notification/InAppNotificationManager;->mMediaNotification:Lcom/parrot/freeflight/notification/InAppNotification;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_0
    iget-object v7, p0, Lcom/parrot/freeflight/notification/InAppNotificationManager;->mAuthenticationManager:Lcom/parrot/freeflight/core/authentication/AuthenticationManager;

    invoke-virtual {v7}, Lcom/parrot/freeflight/core/authentication/AuthenticationManager;->isAuthenticated()Z

    move-result v7

    if-nez v7, :cond_5

    .line 129
    const-string v7, "ONCE_MY_PARROT_DISMISSED"

    new-instance v8, Lcom/parrot/freeflight/notification/InAppNotificationManager$1;

    invoke-direct {v8, p0}, Lcom/parrot/freeflight/notification/InAppNotificationManager$1;-><init>(Lcom/parrot/freeflight/notification/InAppNotificationManager;)V

    invoke-static {v7, v8}, Ljonathanfinerty/once/Once;->beenDone(Ljava/lang/String;Ljonathanfinerty/once/CountChecker;)Z

    move-result v4

    .line 136
    .local v4, "neverShowAgain":Z
    if-nez v4, :cond_5

    .line 137
    const-string v7, "ONCE_MY_PARROT_DISMISSED"

    invoke-static {v7}, Ljonathanfinerty/once/Once;->beenDone(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    const/4 v3, 0x1

    .line 138
    .local v3, "neverDismissed":Z
    :goto_0
    const/4 v0, 0x0

    .line 139
    .local v0, "dismissedOnce":Z
    const/4 v2, 0x0

    .line 140
    .local v2, "dismissedTwice":Z
    const/4 v1, 0x0

    .line 142
    .local v1, "dismissedThreeTimes":Z
    if-nez v3, :cond_1

    .line 143
    const-string v7, "ONCE_MY_PARROT_DISMISSED"

    new-instance v8, Lcom/parrot/freeflight/notification/InAppNotificationManager$2;

    invoke-direct {v8, p0}, Lcom/parrot/freeflight/notification/InAppNotificationManager$2;-><init>(Lcom/parrot/freeflight/notification/InAppNotificationManager;)V

    invoke-static {v7, v8}, Ljonathanfinerty/once/Once;->beenDone(Ljava/lang/String;Ljonathanfinerty/once/CountChecker;)Z

    move-result v0

    .line 149
    if-nez v0, :cond_1

    .line 150
    const-string v7, "ONCE_MY_PARROT_DISMISSED"

    new-instance v8, Lcom/parrot/freeflight/notification/InAppNotificationManager$3;

    invoke-direct {v8, p0}, Lcom/parrot/freeflight/notification/InAppNotificationManager$3;-><init>(Lcom/parrot/freeflight/notification/InAppNotificationManager;)V

    invoke-static {v7, v8}, Ljonathanfinerty/once/Once;->beenDone(Ljava/lang/String;Ljonathanfinerty/once/CountChecker;)Z

    move-result v2

    .line 156
    if-nez v2, :cond_1

    .line 157
    const-string v7, "ONCE_MY_PARROT_DISMISSED"

    new-instance v8, Lcom/parrot/freeflight/notification/InAppNotificationManager$4;

    invoke-direct {v8, p0}, Lcom/parrot/freeflight/notification/InAppNotificationManager$4;-><init>(Lcom/parrot/freeflight/notification/InAppNotificationManager;)V

    invoke-static {v7, v8}, Ljonathanfinerty/once/Once;->beenDone(Ljava/lang/String;Ljonathanfinerty/once/CountChecker;)Z

    move-result v1

    .line 167
    :cond_1
    if-nez v3, :cond_4

    if-eqz v0, :cond_2

    sget-object v7, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0x7

    const-string v10, "ONCE_MY_PARROT_DISMISSED"

    .line 168
    invoke-static {v7, v8, v9, v10}, Ljonathanfinerty/once/Once;->beenDone(Ljava/util/concurrent/TimeUnit;JLjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_2
    if-eqz v2, :cond_3

    sget-object v7, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0xe

    const-string v10, "ONCE_MY_PARROT_DISMISSED"

    .line 169
    invoke-static {v7, v8, v9, v10}, Ljonathanfinerty/once/Once;->beenDone(Ljava/util/concurrent/TimeUnit;JLjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_3
    if-eqz v1, :cond_5

    sget-object v7, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0x1e

    const-string v10, "ONCE_MY_PARROT_DISMISSED"

    .line 170
    invoke-static {v7, v8, v9, v10}, Ljonathanfinerty/once/Once;->beenDone(Ljava/util/concurrent/TimeUnit;JLjava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 172
    :cond_4
    iget-object v7, p0, Lcom/parrot/freeflight/notification/InAppNotificationManager;->mInAppNotificationList:Ljava/util/List;

    invoke-direct {p0}, Lcom/parrot/freeflight/notification/InAppNotificationManager;->createMyParrotNotification()Lcom/parrot/freeflight/notification/InAppNotification;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    .end local v0    # "dismissedOnce":Z
    .end local v1    # "dismissedThreeTimes":Z
    .end local v2    # "dismissedTwice":Z
    .end local v3    # "neverDismissed":Z
    .end local v4    # "neverShowAgain":Z
    :cond_5
    iget-object v7, p0, Lcom/parrot/freeflight/notification/InAppNotificationManager;->mOfferManager:Lcom/parrot/freeflight/offer/OfferManager;

    invoke-virtual {v7}, Lcom/parrot/freeflight/offer/OfferManager;->getOffers()Ljava/util/Set;

    move-result-object v7

    iput-object v7, p0, Lcom/parrot/freeflight/notification/InAppNotificationManager;->mOffers:Ljava/util/Set;

    .line 178
    iget-object v7, p0, Lcom/parrot/freeflight/notification/InAppNotificationManager;->mOffers:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/parrot/freeflight/offer/model/Offer;

    .line 179
    .local v6, "offer":Lcom/parrot/freeflight/offer/model/Offer;
    new-instance v5, Lcom/parrot/freeflight/notification/InAppNotification;

    iget-object v8, p0, Lcom/parrot/freeflight/notification/InAppNotificationManager;->mContext:Landroid/content/Context;

    invoke-direct {v5, v8, v6}, Lcom/parrot/freeflight/notification/InAppNotification;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/offer/model/Offer;)V

    .line 180
    .local v5, "notification":Lcom/parrot/freeflight/notification/InAppNotification;
    iget-object v8, p0, Lcom/parrot/freeflight/notification/InAppNotificationManager;->mInAppNotificationList:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 137
    .end local v5    # "notification":Lcom/parrot/freeflight/notification/InAppNotification;
    .end local v6    # "offer":Lcom/parrot/freeflight/offer/model/Offer;
    .restart local v4    # "neverShowAgain":Z
    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 182
    .end local v4    # "neverShowAgain":Z
    :cond_7
    return-void
.end method


# virtual methods
.method public addAndShowNotification(Lcom/parrot/freeflight/notification/InAppNotification;)V
    .locals 4
    .param p1, "notification"    # Lcom/parrot/freeflight/notification/InAppNotification;

    .prologue
    .line 88
    invoke-virtual {p1}, Lcom/parrot/freeflight/notification/InAppNotification;->getType()Lcom/parrot/freeflight/notification/InAppNotification$Type;

    move-result-object v0

    sget-object v1, Lcom/parrot/freeflight/notification/InAppNotification$Type;->MEDIA:Lcom/parrot/freeflight/notification/InAppNotification$Type;

    if-ne v0, v1, :cond_1

    .line 89
    iget-object v0, p0, Lcom/parrot/freeflight/notification/InAppNotificationManager;->mInAppNotificationList:Ljava/util/List;

    iget-object v1, p0, Lcom/parrot/freeflight/notification/InAppNotificationManager;->mMediaNotification:Lcom/parrot/freeflight/notification/InAppNotification;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/parrot/freeflight/notification/InAppNotificationManager;->mInAppNotificationList:Ljava/util/List;

    iget-object v1, p0, Lcom/parrot/freeflight/notification/InAppNotificationManager;->mMediaNotification:Lcom/parrot/freeflight/notification/InAppNotification;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 92
    :cond_0
    iput-object p1, p0, Lcom/parrot/freeflight/notification/InAppNotificationManager;->mMediaNotification:Lcom/parrot/freeflight/notification/InAppNotification;

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/notification/InAppNotificationManager;->mInAppNotificationList:Ljava/util/List;

    iget v1, p0, Lcom/parrot/freeflight/notification/InAppNotificationManager;->mCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/parrot/freeflight/notification/InAppNotificationManager;->mCount:I

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/parrot/freeflight/notification/InAppNotificationManager;->mInAppNotificationList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    rem-int/2addr v1, v2

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 95
    return-void
.end method

.method public getNextNotification()Lcom/parrot/freeflight/notification/InAppNotification;
    .locals 3

    .prologue
    .line 98
    iget-object v0, p0, Lcom/parrot/freeflight/notification/InAppNotificationManager;->mInAppNotificationList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/parrot/freeflight/notification/InAppNotificationManager;->mInAppNotificationList:Ljava/util/List;

    iget v1, p0, Lcom/parrot/freeflight/notification/InAppNotificationManager;->mCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/parrot/freeflight/notification/InAppNotificationManager;->mCount:I

    iget-object v2, p0, Lcom/parrot/freeflight/notification/InAppNotificationManager;->mInAppNotificationList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    rem-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/notification/InAppNotification;

    .line 101
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lcom/parrot/freeflight/notification/InAppNotificationManager;->mCount:I

    .line 71
    invoke-direct {p0}, Lcom/parrot/freeflight/notification/InAppNotificationManager;->updateNotificationList()V

    .line 72
    return-void
.end method

.method public removeNotification(Lcom/parrot/freeflight/notification/InAppNotification;)V
    .locals 2
    .param p1, "notification"    # Lcom/parrot/freeflight/notification/InAppNotification;

    .prologue
    .line 106
    sget-object v0, Lcom/parrot/freeflight/notification/InAppNotificationManager$5;->$SwitchMap$com$parrot$freeflight$notification$InAppNotification$Type:[I

    invoke-virtual {p1}, Lcom/parrot/freeflight/notification/InAppNotification;->getType()Lcom/parrot/freeflight/notification/InAppNotification$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/notification/InAppNotification$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 117
    :goto_0
    invoke-direct {p0}, Lcom/parrot/freeflight/notification/InAppNotificationManager;->updateNotificationList()V

    .line 118
    return-void

    .line 108
    :pswitch_0
    iget-object v0, p0, Lcom/parrot/freeflight/notification/InAppNotificationManager;->mOfferManager:Lcom/parrot/freeflight/offer/OfferManager;

    invoke-virtual {p1}, Lcom/parrot/freeflight/notification/InAppNotification;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/offer/OfferManager;->removeOffer(Ljava/lang/String;)V

    goto :goto_0

    .line 111
    :pswitch_1
    const-string v0, "ONCE_MY_PARROT_DISMISSED"

    invoke-static {v0}, Ljonathanfinerty/once/Once;->markDone(Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :pswitch_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/notification/InAppNotificationManager;->mMediaNotification:Lcom/parrot/freeflight/notification/InAppNotification;

    goto :goto_0

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
