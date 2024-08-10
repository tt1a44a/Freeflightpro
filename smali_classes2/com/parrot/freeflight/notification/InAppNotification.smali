.class public Lcom/parrot/freeflight/notification/InAppNotification;
.super Ljava/lang/Object;
.source "InAppNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/notification/InAppNotification$Type;
    }
.end annotation


# static fields
.field private static final OFFER_NOTIFICATION_MAX_SIZE:I = 0x20


# instance fields
.field private mId:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mIntent:Landroid/content/Intent;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mSubTitle:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mSubTitleSpannable:Landroid/text/Spannable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mTag:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mTagColor:I

.field private mTitle:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mTitleSpannable:Landroid/text/Spannable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mType:Lcom/parrot/freeflight/notification/InAppNotification$Type;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/parrot/freeflight/offer/model/Offer;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "offer"    # Lcom/parrot/freeflight/offer/model/Offer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x20

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iget-object v2, p2, Lcom/parrot/freeflight/offer/model/Offer;->id:Ljava/lang/String;

    iput-object v2, p0, Lcom/parrot/freeflight/notification/InAppNotification;->mId:Ljava/lang/String;

    .line 89
    sget-object v2, Lcom/parrot/freeflight/notification/InAppNotification$Type;->OFFER:Lcom/parrot/freeflight/notification/InAppNotification$Type;

    iput-object v2, p0, Lcom/parrot/freeflight/notification/InAppNotification;->mType:Lcom/parrot/freeflight/notification/InAppNotification$Type;

    .line 90
    invoke-virtual {p2}, Lcom/parrot/freeflight/offer/model/Offer;->getTypeEnum()Lcom/parrot/freeflight/offer/model/OfferType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/offer/model/OfferType;->getText()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/freeflight/notification/InAppNotification;->mTag:Ljava/lang/String;

    .line 91
    invoke-virtual {p2}, Lcom/parrot/freeflight/offer/model/Offer;->getTypeEnum()Lcom/parrot/freeflight/offer/model/OfferType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/offer/model/OfferType;->getColor()I

    move-result v2

    invoke-static {p1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/parrot/freeflight/notification/InAppNotification;->mTagColor:I

    .line 93
    iget-object v1, p2, Lcom/parrot/freeflight/offer/model/Offer;->title:Ljava/lang/String;

    .line 94
    .local v1, "title":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_0

    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u2026"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 97
    :cond_0
    iput-object v1, p0, Lcom/parrot/freeflight/notification/InAppNotification;->mTitle:Ljava/lang/String;

    .line 99
    iget-object v0, p2, Lcom/parrot/freeflight/offer/model/Offer;->description:Ljava/lang/String;

    .line 100
    .local v0, "subtitle":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_1

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u2026"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    :cond_1
    iput-object v0, p0, Lcom/parrot/freeflight/notification/InAppNotification;->mSubTitle:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/parrot/freeflight/notification/InAppNotification$Type;Ljava/lang/String;ILandroid/text/Spannable;Landroid/text/Spannable;Landroid/content/Intent;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "type"    # Lcom/parrot/freeflight/notification/InAppNotification$Type;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "tag"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "color"    # I
    .param p5, "title"    # Landroid/text/Spannable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6, "subTitle"    # Landroid/text/Spannable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7, "intent"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/parrot/freeflight/notification/InAppNotification;->mId:Ljava/lang/String;

    .line 79
    iput-object p2, p0, Lcom/parrot/freeflight/notification/InAppNotification;->mType:Lcom/parrot/freeflight/notification/InAppNotification$Type;

    .line 80
    iput-object p3, p0, Lcom/parrot/freeflight/notification/InAppNotification;->mTag:Ljava/lang/String;

    .line 81
    iput p4, p0, Lcom/parrot/freeflight/notification/InAppNotification;->mTagColor:I

    .line 82
    iput-object p5, p0, Lcom/parrot/freeflight/notification/InAppNotification;->mTitleSpannable:Landroid/text/Spannable;

    .line 83
    iput-object p6, p0, Lcom/parrot/freeflight/notification/InAppNotification;->mSubTitleSpannable:Landroid/text/Spannable;

    .line 84
    iput-object p7, p0, Lcom/parrot/freeflight/notification/InAppNotification;->mIntent:Landroid/content/Intent;

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/parrot/freeflight/notification/InAppNotification$Type;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "type"    # Lcom/parrot/freeflight/notification/InAppNotification$Type;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "tag"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "color"    # I
    .param p5, "title"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6, "subTitle"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7, "intent"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/parrot/freeflight/notification/InAppNotification;->mId:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Lcom/parrot/freeflight/notification/InAppNotification;->mType:Lcom/parrot/freeflight/notification/InAppNotification$Type;

    .line 64
    iput-object p3, p0, Lcom/parrot/freeflight/notification/InAppNotification;->mTag:Ljava/lang/String;

    .line 65
    iput p4, p0, Lcom/parrot/freeflight/notification/InAppNotification;->mTagColor:I

    .line 66
    iput-object p5, p0, Lcom/parrot/freeflight/notification/InAppNotification;->mTitle:Ljava/lang/String;

    .line 67
    iput-object p6, p0, Lcom/parrot/freeflight/notification/InAppNotification;->mSubTitle:Ljava/lang/String;

    .line 68
    iput-object p7, p0, Lcom/parrot/freeflight/notification/InAppNotification;->mIntent:Landroid/content/Intent;

    .line 69
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lcom/parrot/freeflight/notification/InAppNotification;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 180
    iget-object v0, p0, Lcom/parrot/freeflight/notification/InAppNotification;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getSubTitle()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 153
    iget-object v0, p0, Lcom/parrot/freeflight/notification/InAppNotification;->mSubTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getSubTitleSpannable()Landroid/text/Spannable;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lcom/parrot/freeflight/notification/InAppNotification;->mSubTitleSpannable:Landroid/text/Spannable;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/parrot/freeflight/notification/InAppNotification;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public getTagColor()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/parrot/freeflight/notification/InAppNotification;->mTagColor:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lcom/parrot/freeflight/notification/InAppNotification;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleSpannable()Landroid/text/Spannable;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lcom/parrot/freeflight/notification/InAppNotification;->mTitleSpannable:Landroid/text/Spannable;

    return-object v0
.end method

.method public getType()Lcom/parrot/freeflight/notification/InAppNotification$Type;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lcom/parrot/freeflight/notification/InAppNotification;->mType:Lcom/parrot/freeflight/notification/InAppNotification$Type;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 113
    iput-object p1, p0, Lcom/parrot/freeflight/notification/InAppNotification;->mId:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 184
    iput-object p1, p0, Lcom/parrot/freeflight/notification/InAppNotification;->mIntent:Landroid/content/Intent;

    .line 185
    return-void
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "subTitle"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 157
    iput-object p1, p0, Lcom/parrot/freeflight/notification/InAppNotification;->mSubTitle:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public setSubTitleSpannable(Landroid/text/Spannable;)V
    .locals 0
    .param p1, "subTitleSpannable"    # Landroid/text/Spannable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 175
    iput-object p1, p0, Lcom/parrot/freeflight/notification/InAppNotification;->mSubTitleSpannable:Landroid/text/Spannable;

    .line 176
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 131
    iput-object p1, p0, Lcom/parrot/freeflight/notification/InAppNotification;->mTag:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public setTagColor(I)V
    .locals 0
    .param p1, "tagColor"    # I

    .prologue
    .line 139
    iput p1, p0, Lcom/parrot/freeflight/notification/InAppNotification;->mTagColor:I

    .line 140
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 148
    iput-object p1, p0, Lcom/parrot/freeflight/notification/InAppNotification;->mTitle:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public setTitleSpannable(Landroid/text/Spannable;)V
    .locals 0
    .param p1, "titleSpannable"    # Landroid/text/Spannable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 166
    iput-object p1, p0, Lcom/parrot/freeflight/notification/InAppNotification;->mTitleSpannable:Landroid/text/Spannable;

    .line 167
    return-void
.end method

.method public setType(Lcom/parrot/freeflight/notification/InAppNotification$Type;)V
    .locals 0
    .param p1, "type"    # Lcom/parrot/freeflight/notification/InAppNotification$Type;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 122
    iput-object p1, p0, Lcom/parrot/freeflight/notification/InAppNotification;->mType:Lcom/parrot/freeflight/notification/InAppNotification$Type;

    .line 123
    return-void
.end method
