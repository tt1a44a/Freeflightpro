.class Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter$1;
.super Ljava/lang/Object;
.source "ProfileActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/academy/ProfileMyInfoView$OnEditAvatarClickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;)V
    .locals 0
    .param p1, "this$1"    # Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;

    .prologue
    .line 308
    iput-object p1, p0, Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter$1;->this$1:Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditAvatarClicked()V
    .locals 4

    .prologue
    .line 311
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 312
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter$1;->this$1:Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;

    iget-object v1, v1, Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;->this$0:Lcom/parrot/freeflight/academy/ProfileActivity;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/parrot/freeflight/academy/ProfileActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 313
    return-void
.end method
