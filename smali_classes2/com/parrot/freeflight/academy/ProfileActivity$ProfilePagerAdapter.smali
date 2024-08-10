.class Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "ProfileActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/academy/ProfileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProfilePagerAdapter"
.end annotation


# static fields
.field private static final POSITION_ABOUT:I = 0x0

.field private static final POSITION_MY_INFOS:I = 0x1


# instance fields
.field private final mItems:[Lcom/parrot/freeflight/academy/ProfileActivity$ProfileView;

.field final synthetic this$0:Lcom/parrot/freeflight/academy/ProfileActivity;


# direct methods
.method private constructor <init>(Lcom/parrot/freeflight/academy/ProfileActivity;)V
    .locals 1

    .prologue
    .line 281
    iput-object p1, p0, Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;->this$0:Lcom/parrot/freeflight/academy/ProfileActivity;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 285
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/parrot/freeflight/academy/ProfileActivity$ProfileView;

    iput-object v0, p0, Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;->mItems:[Lcom/parrot/freeflight/academy/ProfileActivity$ProfileView;

    return-void
.end method

.method synthetic constructor <init>(Lcom/parrot/freeflight/academy/ProfileActivity;Lcom/parrot/freeflight/academy/ProfileActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parrot/freeflight/academy/ProfileActivity;
    .param p2, "x1"    # Lcom/parrot/freeflight/academy/ProfileActivity$1;

    .prologue
    .line 281
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;-><init>(Lcom/parrot/freeflight/academy/ProfileActivity;)V

    return-void
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;)[Lcom/parrot/freeflight/academy/ProfileActivity$ProfileView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;

    .prologue
    .line 281
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;->mItems:[Lcom/parrot/freeflight/academy/ProfileActivity$ProfileView;

    return-object v0
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 327
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;->mItems:[Lcom/parrot/freeflight/academy/ProfileActivity$ProfileView;

    const/4 v1, 0x0

    aput-object v1, v0, p2

    .line 328
    check-cast p3, Landroid/view/View;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 329
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 289
    const/4 v0, 0x2

    return v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 333
    packed-switch p1, :pswitch_data_0

    .line 339
    const-string v0, ""

    :goto_0
    return-object v0

    .line 335
    :pswitch_0
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;->this$0:Lcom/parrot/freeflight/academy/ProfileActivity;

    invoke-virtual {v0}, Lcom/parrot/freeflight/academy/ProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1105fa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 337
    :pswitch_1
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;->this$0:Lcom/parrot/freeflight/academy/ProfileActivity;

    invoke-virtual {v0}, Lcom/parrot/freeflight/academy/ProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1105fb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 333
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 299
    packed-switch p2, :pswitch_data_0

    .line 320
    :goto_0
    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;->mItems:[Lcom/parrot/freeflight/academy/ProfileActivity$ProfileView;

    aget-object v2, v2, p2

    iget-object v3, p0, Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;->this$0:Lcom/parrot/freeflight/academy/ProfileActivity;

    invoke-static {v3}, Lcom/parrot/freeflight/academy/ProfileActivity;->access$700(Lcom/parrot/freeflight/academy/ProfileActivity;)Lcom/parrot/freeflight/core/academy/AcademyManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parrot/freeflight/core/academy/AcademyManager;->getProfile()Lcom/parrot/freeflight/core/academy/model/ARAcademyProfile;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/parrot/freeflight/academy/ProfileActivity$ProfileView;->updateUserInfo(Lcom/parrot/freeflight/core/academy/model/ARAcademyProfile;)V

    .line 321
    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;->mItems:[Lcom/parrot/freeflight/academy/ProfileActivity$ProfileView;

    aget-object v2, v2, p2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 322
    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;->mItems:[Lcom/parrot/freeflight/academy/ProfileActivity$ProfileView;

    aget-object v2, v2, p2

    return-object v2

    .line 301
    :pswitch_0
    new-instance v0, Lcom/parrot/freeflight/academy/ProfileAboutView;

    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;->this$0:Lcom/parrot/freeflight/academy/ProfileActivity;

    invoke-direct {v0, v2}, Lcom/parrot/freeflight/academy/ProfileAboutView;-><init>(Landroid/content/Context;)V

    .line 302
    .local v0, "aboutView":Lcom/parrot/freeflight/academy/ProfileAboutView;
    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;->this$0:Lcom/parrot/freeflight/academy/ProfileActivity;

    invoke-static {v2}, Lcom/parrot/freeflight/academy/ProfileActivity;->access$400(Lcom/parrot/freeflight/academy/ProfileActivity;)Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;->this$0:Lcom/parrot/freeflight/academy/ProfileActivity;

    invoke-static {v3}, Lcom/parrot/freeflight/academy/ProfileActivity;->access$500(Lcom/parrot/freeflight/academy/ProfileActivity;)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/parrot/freeflight/academy/ProfileAboutView;->updateAvatar(Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;Z)V

    .line 303
    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;->this$0:Lcom/parrot/freeflight/academy/ProfileActivity;

    invoke-static {v2}, Lcom/parrot/freeflight/academy/ProfileActivity;->access$600(Lcom/parrot/freeflight/academy/ProfileActivity;)Lcom/parrot/freeflight/core/academy/model/ARAcademyPilot;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/academy/ProfileAboutView;->updatePilotInfos(Lcom/parrot/freeflight/core/academy/model/ARAcademyPilot;)V

    .line 304
    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;->mItems:[Lcom/parrot/freeflight/academy/ProfileActivity$ProfileView;

    aput-object v0, v2, p2

    goto :goto_0

    .line 307
    .end local v0    # "aboutView":Lcom/parrot/freeflight/academy/ProfileAboutView;
    :pswitch_1
    new-instance v1, Lcom/parrot/freeflight/academy/ProfileMyInfoView;

    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;->this$0:Lcom/parrot/freeflight/academy/ProfileActivity;

    invoke-direct {v1, v2}, Lcom/parrot/freeflight/academy/ProfileMyInfoView;-><init>(Landroid/content/Context;)V

    .line 308
    .local v1, "myInfoView":Lcom/parrot/freeflight/academy/ProfileMyInfoView;
    new-instance v2, Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter$1;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter$1;-><init>(Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;)V

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/academy/ProfileMyInfoView;->setOnEditAvatarClickedListener(Lcom/parrot/freeflight/academy/ProfileMyInfoView$OnEditAvatarClickedListener;)V

    .line 315
    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;->mItems:[Lcom/parrot/freeflight/academy/ProfileActivity$ProfileView;

    aput-object v1, v2, p2

    goto :goto_0

    .line 299
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 294
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateUserAvatar()V
    .locals 5

    .prologue
    .line 352
    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;->mItems:[Lcom/parrot/freeflight/academy/ProfileActivity$ProfileView;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 353
    .local v0, "view":Lcom/parrot/freeflight/academy/ProfileActivity$ProfileView;
    if-eqz v0, :cond_0

    .line 354
    iget-object v4, p0, Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;->this$0:Lcom/parrot/freeflight/academy/ProfileActivity;

    invoke-static {v4}, Lcom/parrot/freeflight/academy/ProfileActivity;->access$700(Lcom/parrot/freeflight/academy/ProfileActivity;)Lcom/parrot/freeflight/core/academy/AcademyManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parrot/freeflight/core/academy/AcademyManager;->getAvatar()Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/parrot/freeflight/academy/ProfileActivity$ProfileView;->updateAvatar(Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;)V

    .line 352
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 357
    .end local v0    # "view":Lcom/parrot/freeflight/academy/ProfileActivity$ProfileView;
    :cond_1
    return-void
.end method

.method public updateUserInfos()V
    .locals 5

    .prologue
    .line 344
    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;->mItems:[Lcom/parrot/freeflight/academy/ProfileActivity$ProfileView;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 345
    .local v0, "view":Lcom/parrot/freeflight/academy/ProfileActivity$ProfileView;
    if-eqz v0, :cond_0

    .line 346
    iget-object v4, p0, Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;->this$0:Lcom/parrot/freeflight/academy/ProfileActivity;

    invoke-static {v4}, Lcom/parrot/freeflight/academy/ProfileActivity;->access$700(Lcom/parrot/freeflight/academy/ProfileActivity;)Lcom/parrot/freeflight/core/academy/AcademyManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parrot/freeflight/core/academy/AcademyManager;->getProfile()Lcom/parrot/freeflight/core/academy/model/ARAcademyProfile;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/parrot/freeflight/academy/ProfileActivity$ProfileView;->updateUserInfo(Lcom/parrot/freeflight/core/academy/model/ARAcademyProfile;)V

    .line 344
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 349
    .end local v0    # "view":Lcom/parrot/freeflight/academy/ProfileActivity$ProfileView;
    :cond_1
    return-void
.end method
