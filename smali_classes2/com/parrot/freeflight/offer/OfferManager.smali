.class public Lcom/parrot/freeflight/offer/OfferManager;
.super Ljava/lang/Object;
.source "OfferManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/offer/OfferManager$DownloadOfferImageTask;
    }
.end annotation


# static fields
.field private static final OFFERS_IMAGE_FOLDER:Ljava/lang/String; = "offers"

.field private static final OFFERS_KEY:Ljava/lang/String; = "offers"

.field private static final OFFERS_PREFERENCES:Ljava/lang/String; = "offers_preferences"

.field private static final OFFERS_SYNC_TAG:Ljava/lang/String; = "offers_sync_tag"

.field private static final PRODUCT_IDS_KEY:Ljava/lang/String; = "product_ids"

.field private static final REMOVED_OFFERS_KEY:Ljava/lang/String; = "removed_offers"


# instance fields
.field private mCurrentCall:Lretrofit2/Call;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call",
            "<",
            "Lcom/parrot/freeflight/offer/model/OfferResponse;",
            ">;"
        }
    .end annotation
.end field

.field private mImageDownloads:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/AsyncTask;",
            ">;"
        }
    .end annotation
.end field

.field private final mImageFolder:Ljava/io/File;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mOfferAPI:Lcom/parrot/freeflight/offer/client/OfferAPI;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mSharedPreferences:Landroid/content/SharedPreferences;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/parrot/freeflight/core/connection/ConnectionManager;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "connectionManager"    # Lcom/parrot/freeflight/core/connection/ConnectionManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/offer/OfferManager;->mImageDownloads:Ljava/util/List;

    .line 65
    const-string v0, "offers"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/offer/OfferManager;->mImageFolder:Ljava/io/File;

    .line 66
    const-string v0, "offers_preferences"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/offer/OfferManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 67
    invoke-static {}, Lcom/parrot/freeflight/offer/client/OfferModule;->getOfferAPI()Lcom/parrot/freeflight/offer/client/OfferAPI;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/offer/OfferManager;->mOfferAPI:Lcom/parrot/freeflight/offer/client/OfferAPI;

    .line 69
    new-instance v0, Lcom/parrot/freeflight/offer/OfferManager$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/offer/OfferManager$1;-><init>(Lcom/parrot/freeflight/offer/OfferManager;)V

    invoke-virtual {p2, v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->registerListener(Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;)V

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/offer/OfferManager;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/offer/OfferManager;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/parrot/freeflight/offer/OfferManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/offer/OfferManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/offer/OfferManager;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/parrot/freeflight/offer/OfferManager;->cleanExpiredOffers()V

    return-void
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/offer/OfferManager;Lcom/parrot/freeflight/offer/model/Offer;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/offer/OfferManager;
    .param p1, "x1"    # Lcom/parrot/freeflight/offer/model/Offer;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/offer/OfferManager;->saveOffer(Lcom/parrot/freeflight/offer/model/Offer;)V

    return-void
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/offer/OfferManager;Lcom/parrot/freeflight/offer/model/Offer;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/offer/OfferManager;
    .param p1, "x1"    # Lcom/parrot/freeflight/offer/model/Offer;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/offer/OfferManager;->downloadImageIfNeeded(Lcom/parrot/freeflight/offer/model/Offer;)V

    return-void
.end method

.method private cleanExpiredOffers()V
    .locals 12

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/parrot/freeflight/offer/OfferManager;->getAllOffers()Ljava/util/Set;

    move-result-object v0

    .line 135
    .local v0, "allOffers":Ljava/util/Set;, "Ljava/util/Set<Lcom/parrot/freeflight/offer/model/Offer;>;"
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 136
    .local v8, "validOffers":Ljava/util/Set;, "Ljava/util/Set<Lcom/parrot/freeflight/offer/model/Offer;>;"
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 138
    .local v5, "now":Ljava/util/Date;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .local v3, "imageToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/parrot/freeflight/offer/model/Offer;

    .line 142
    .local v6, "offer":Lcom/parrot/freeflight/offer/model/Offer;
    iget-object v10, v6, Lcom/parrot/freeflight/offer/model/Offer;->expiration:Ljava/util/Date;

    invoke-virtual {v10, v5}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 143
    iget-object v4, v6, Lcom/parrot/freeflight/offer/model/Offer;->imageUrl:Ljava/lang/String;

    .line 144
    .local v4, "imageUrl":Ljava/lang/String;
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 146
    .end local v4    # "imageUrl":Ljava/lang/String;
    :cond_0
    invoke-interface {v8, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 151
    .end local v6    # "offer":Lcom/parrot/freeflight/offer/model/Offer;
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 152
    .restart local v4    # "imageUrl":Ljava/lang/String;
    const/4 v1, 0x1

    .line 153
    .local v1, "delete":Z
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/parrot/freeflight/offer/model/Offer;

    .line 154
    .local v7, "validOffer":Lcom/parrot/freeflight/offer/model/Offer;
    iget-object v11, v7, Lcom/parrot/freeflight/offer/model/Offer;->imageUrl:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 155
    const/4 v1, 0x0

    .line 159
    .end local v7    # "validOffer":Lcom/parrot/freeflight/offer/model/Offer;
    :cond_4
    if-eqz v1, :cond_2

    .line 160
    invoke-direct {p0, v4}, Lcom/parrot/freeflight/offer/OfferManager;->getOfferImageFileFromUrl(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 161
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 165
    .end local v1    # "delete":Z
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "imageUrl":Ljava/lang/String;
    :cond_5
    return-void
.end method

.method private downloadImageIfNeeded(Lcom/parrot/freeflight/offer/model/Offer;)V
    .locals 5
    .param p1, "offer"    # Lcom/parrot/freeflight/offer/model/Offer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 268
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/offer/OfferManager;->getOfferImageFile(Lcom/parrot/freeflight/offer/model/Offer;)Ljava/io/File;

    move-result-object v0

    .line 270
    .local v0, "image":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 271
    new-instance v2, Lcom/parrot/freeflight/offer/OfferManager$DownloadOfferImageTask;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/offer/OfferManager$DownloadOfferImageTask;-><init>(Lcom/parrot/freeflight/offer/OfferManager;)V

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/parrot/freeflight/offer/model/Offer;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/offer/OfferManager$DownloadOfferImageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v1

    .line 272
    .local v1, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Lcom/parrot/freeflight/offer/model/Offer;Ljava/lang/Integer;Ljava/lang/Long;>;"
    iget-object v2, p0, Lcom/parrot/freeflight/offer/OfferManager;->mImageDownloads:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    .end local v1    # "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Lcom/parrot/freeflight/offer/model/Offer;Ljava/lang/Integer;Ljava/lang/Long;>;"
    :cond_0
    return-void
.end method

.method private fromJson(Ljava/lang/String;)Lcom/parrot/freeflight/offer/model/Offer;
    .locals 2
    .param p1, "json"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 248
    invoke-static {}, Lcom/parrot/freeflight/offer/client/OfferModule;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/parrot/freeflight/offer/model/Offer;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/offer/model/Offer;

    return-object v0
.end method

.method private getAllOffers()Ljava/util/Set;
    .locals 6
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/parrot/freeflight/offer/model/Offer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    iget-object v3, p0, Lcom/parrot/freeflight/offer/OfferManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v4, "offers"

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    .line 170
    .local v2, "offersJson":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 171
    .local v1, "offers":Ljava/util/Set;, "Ljava/util/Set<Lcom/parrot/freeflight/offer/model/Offer;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 172
    .local v0, "offerJson":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/parrot/freeflight/offer/OfferManager;->fromJson(Ljava/lang/String;)Lcom/parrot/freeflight/offer/model/Offer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 174
    .end local v0    # "offerJson":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method private getOfferImageFileFromUrl(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p1, "imageUrl"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 264
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/parrot/freeflight/offer/OfferManager;->mImageFolder:Ljava/io/File;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private hasImageAvailable(Lcom/parrot/freeflight/offer/model/Offer;)Z
    .locals 1
    .param p1, "offer"    # Lcom/parrot/freeflight/offer/model/Offer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 256
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/offer/OfferManager;->getOfferImageFile(Lcom/parrot/freeflight/offer/model/Offer;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method private isRemoved(Lcom/parrot/freeflight/offer/model/Offer;)Z
    .locals 4
    .param p1, "offer"    # Lcom/parrot/freeflight/offer/model/Offer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 243
    iget-object v1, p0, Lcom/parrot/freeflight/offer/OfferManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "removed_offers"

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 244
    .local v0, "stringSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p1, Lcom/parrot/freeflight/offer/model/Offer;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private saveOffer(Lcom/parrot/freeflight/offer/model/Offer;)V
    .locals 7
    .param p1, "offerToSave"    # Lcom/parrot/freeflight/offer/model/Offer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 207
    invoke-direct {p0}, Lcom/parrot/freeflight/offer/OfferManager;->getAllOffers()Ljava/util/Set;

    move-result-object v2

    .line 208
    .local v2, "offers":Ljava/util/Set;, "Ljava/util/Set<Lcom/parrot/freeflight/offer/model/Offer;>;"
    const/4 v0, 0x0

    .line 209
    .local v0, "existingOffer":Lcom/parrot/freeflight/offer/model/Offer;
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/offer/model/Offer;

    .line 210
    .local v1, "offer":Lcom/parrot/freeflight/offer/model/Offer;
    iget-object v5, v1, Lcom/parrot/freeflight/offer/model/Offer;->id:Ljava/lang/String;

    iget-object v6, p1, Lcom/parrot/freeflight/offer/model/Offer;->id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 211
    move-object v0, v1

    .line 217
    .end local v1    # "offer":Lcom/parrot/freeflight/offer/model/Offer;
    :cond_1
    if-eqz v0, :cond_2

    .line 218
    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 222
    :cond_2
    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 225
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 226
    .local v3, "offersJson":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/offer/model/Offer;

    .line 227
    .restart local v1    # "offer":Lcom/parrot/freeflight/offer/model/Offer;
    invoke-direct {p0, v1}, Lcom/parrot/freeflight/offer/OfferManager;->toJson(Lcom/parrot/freeflight/offer/model/Offer;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 230
    .end local v1    # "offer":Lcom/parrot/freeflight/offer/model/Offer;
    :cond_3
    iget-object v4, p0, Lcom/parrot/freeflight/offer/OfferManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "offers"

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 231
    return-void
.end method

.method private syncOffers()V
    .locals 7

    .prologue
    .line 106
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 107
    .local v0, "locale":Ljava/util/Locale;
    iget-object v2, p0, Lcom/parrot/freeflight/offer/OfferManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "product_ids"

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 108
    .local v1, "productIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/parrot/freeflight/offer/OfferManager;->mOfferAPI:Lcom/parrot/freeflight/offer/client/OfferAPI;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.parrot.freeflight3"

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-interface {v3, v4, v5, v6, v2}, Lcom/parrot/freeflight/offer/client/OfferAPI;->getOffers(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/freeflight/offer/OfferManager;->mCurrentCall:Lretrofit2/Call;

    .line 110
    iget-object v2, p0, Lcom/parrot/freeflight/offer/OfferManager;->mCurrentCall:Lretrofit2/Call;

    new-instance v3, Lcom/parrot/freeflight/offer/OfferManager$2;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/offer/OfferManager$2;-><init>(Lcom/parrot/freeflight/offer/OfferManager;)V

    invoke-interface {v2, v3}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 131
    return-void
.end method

.method private toJson(Lcom/parrot/freeflight/offer/model/Offer;)Ljava/lang/String;
    .locals 2
    .param p1, "offer"    # Lcom/parrot/freeflight/offer/model/Offer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 252
    invoke-static {}, Lcom/parrot/freeflight/offer/client/OfferModule;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/parrot/freeflight/offer/model/Offer;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getOfferImageFile(Lcom/parrot/freeflight/offer/model/Offer;)Ljava/io/File;
    .locals 1
    .param p1, "offer"    # Lcom/parrot/freeflight/offer/model/Offer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 260
    iget-object v0, p1, Lcom/parrot/freeflight/offer/model/Offer;->imageUrl:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/offer/OfferManager;->getOfferImageFileFromUrl(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getOffers()Ljava/util/Set;
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/parrot/freeflight/offer/model/Offer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 179
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 180
    .local v2, "offers":Ljava/util/Set;, "Ljava/util/Set<Lcom/parrot/freeflight/offer/model/Offer;>;"
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 181
    .local v0, "now":Ljava/util/Date;
    invoke-direct {p0}, Lcom/parrot/freeflight/offer/OfferManager;->getAllOffers()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/offer/model/Offer;

    .line 182
    .local v1, "offer":Lcom/parrot/freeflight/offer/model/Offer;
    iget-object v4, v1, Lcom/parrot/freeflight/offer/model/Offer;->expiration:Ljava/util/Date;

    invoke-virtual {v4, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 183
    invoke-direct {p0, v1}, Lcom/parrot/freeflight/offer/OfferManager;->isRemoved(Lcom/parrot/freeflight/offer/model/Offer;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 184
    invoke-direct {p0, v1}, Lcom/parrot/freeflight/offer/OfferManager;->hasImageAvailable(Lcom/parrot/freeflight/offer/model/Offer;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 185
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 188
    .end local v1    # "offer":Lcom/parrot/freeflight/offer/model/Offer;
    :cond_1
    return-object v2
.end method

.method public getOrderedOffers()Ljava/util/List;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/offer/model/Offer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/parrot/freeflight/offer/OfferManager;->getOffers()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 195
    .local v0, "offers":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/offer/model/Offer;>;"
    new-instance v1, Lcom/parrot/freeflight/offer/OfferManager$3;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/offer/OfferManager$3;-><init>(Lcom/parrot/freeflight/offer/OfferManager;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 202
    return-object v0
.end method

.method public removeOffer(Ljava/lang/String;)V
    .locals 5
    .param p1, "id"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 234
    iget-object v2, p0, Lcom/parrot/freeflight/offer/OfferManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "removed_offers"

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 235
    .local v1, "stringSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 236
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 237
    .local v0, "newSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 238
    iget-object v2, p0, Lcom/parrot/freeflight/offer/OfferManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "removed_offers"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 240
    .end local v0    # "newSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 88
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2

    const-string v1, "offers_sync_tag"

    invoke-static {v0, v2, v3, v1}, Ljonathanfinerty/once/Once;->beenDone(Ljava/util/concurrent/TimeUnit;JLjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    invoke-direct {p0}, Lcom/parrot/freeflight/offer/OfferManager;->syncOffers()V

    .line 90
    const-string v0, "offers_sync_tag"

    invoke-static {v0}, Ljonathanfinerty/once/Once;->markDone(Ljava/lang/String;)V

    .line 92
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 95
    iget-object v1, p0, Lcom/parrot/freeflight/offer/OfferManager;->mCurrentCall:Lretrofit2/Call;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/offer/OfferManager;->mCurrentCall:Lretrofit2/Call;

    invoke-interface {v1}, Lretrofit2/Call;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/parrot/freeflight/offer/OfferManager;->mCurrentCall:Lretrofit2/Call;

    invoke-interface {v1}, Lretrofit2/Call;->cancel()V

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/offer/OfferManager;->mImageDownloads:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/AsyncTask;

    .line 99
    .local v0, "task":Landroid/os/AsyncTask;
    invoke-virtual {v0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 100
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    goto :goto_0

    .line 103
    .end local v0    # "task":Landroid/os/AsyncTask;
    :cond_2
    return-void
.end method
