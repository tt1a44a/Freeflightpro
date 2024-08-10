.class Lcom/parrot/freeflight/view/NotificationBar$3;
.super Ljava/lang/Object;
.source "NotificationBar.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/view/NotificationBar;->updateView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/view/NotificationBar;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/view/NotificationBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/view/NotificationBar;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/parrot/freeflight/view/NotificationBar$3;->this$0:Lcom/parrot/freeflight/view/NotificationBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 187
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/16 v5, 0x20

    .line 154
    iget-object v2, p0, Lcom/parrot/freeflight/view/NotificationBar$3;->this$0:Lcom/parrot/freeflight/view/NotificationBar;

    invoke-static {v2}, Lcom/parrot/freeflight/view/NotificationBar;->access$100(Lcom/parrot/freeflight/view/NotificationBar;)Lcom/parrot/freeflight/notification/InAppNotification;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 155
    iget-object v2, p0, Lcom/parrot/freeflight/view/NotificationBar$3;->this$0:Lcom/parrot/freeflight/view/NotificationBar;

    invoke-static {v2}, Lcom/parrot/freeflight/view/NotificationBar;->access$200(Lcom/parrot/freeflight/view/NotificationBar;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/view/NotificationBar$3;->this$0:Lcom/parrot/freeflight/view/NotificationBar;

    invoke-static {v3}, Lcom/parrot/freeflight/view/NotificationBar;->access$100(Lcom/parrot/freeflight/view/NotificationBar;)Lcom/parrot/freeflight/notification/InAppNotification;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parrot/freeflight/notification/InAppNotification;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v2, p0, Lcom/parrot/freeflight/view/NotificationBar$3;->this$0:Lcom/parrot/freeflight/view/NotificationBar;

    invoke-virtual {v2}, Lcom/parrot/freeflight/view/NotificationBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07047f

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/support/v4/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 158
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 159
    iget-object v2, p0, Lcom/parrot/freeflight/view/NotificationBar$3;->this$0:Lcom/parrot/freeflight/view/NotificationBar;

    invoke-static {v2}, Lcom/parrot/freeflight/view/NotificationBar;->access$100(Lcom/parrot/freeflight/view/NotificationBar;)Lcom/parrot/freeflight/notification/InAppNotification;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/notification/InAppNotification;->getTagColor()I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 160
    iget-object v2, p0, Lcom/parrot/freeflight/view/NotificationBar$3;->this$0:Lcom/parrot/freeflight/view/NotificationBar;

    invoke-static {v2}, Lcom/parrot/freeflight/view/NotificationBar;->access$200(Lcom/parrot/freeflight/view/NotificationBar;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 165
    :goto_0
    iget-object v2, p0, Lcom/parrot/freeflight/view/NotificationBar$3;->this$0:Lcom/parrot/freeflight/view/NotificationBar;

    invoke-static {v2}, Lcom/parrot/freeflight/view/NotificationBar;->access$100(Lcom/parrot/freeflight/view/NotificationBar;)Lcom/parrot/freeflight/notification/InAppNotification;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/notification/InAppNotification;->getTitleSpannable()Landroid/text/Spannable;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 166
    iget-object v2, p0, Lcom/parrot/freeflight/view/NotificationBar$3;->this$0:Lcom/parrot/freeflight/view/NotificationBar;

    invoke-static {v2}, Lcom/parrot/freeflight/view/NotificationBar;->access$300(Lcom/parrot/freeflight/view/NotificationBar;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/view/NotificationBar$3;->this$0:Lcom/parrot/freeflight/view/NotificationBar;

    invoke-static {v3}, Lcom/parrot/freeflight/view/NotificationBar;->access$100(Lcom/parrot/freeflight/view/NotificationBar;)Lcom/parrot/freeflight/notification/InAppNotification;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parrot/freeflight/notification/InAppNotification;->getTitleSpannable()Landroid/text/Spannable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    :goto_1
    iget-object v2, p0, Lcom/parrot/freeflight/view/NotificationBar$3;->this$0:Lcom/parrot/freeflight/view/NotificationBar;

    invoke-static {v2}, Lcom/parrot/freeflight/view/NotificationBar;->access$100(Lcom/parrot/freeflight/view/NotificationBar;)Lcom/parrot/freeflight/notification/InAppNotification;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/notification/InAppNotification;->getSubTitleSpannable()Landroid/text/Spannable;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 172
    iget-object v2, p0, Lcom/parrot/freeflight/view/NotificationBar$3;->this$0:Lcom/parrot/freeflight/view/NotificationBar;

    invoke-static {v2}, Lcom/parrot/freeflight/view/NotificationBar;->access$400(Lcom/parrot/freeflight/view/NotificationBar;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/view/NotificationBar$3;->this$0:Lcom/parrot/freeflight/view/NotificationBar;

    invoke-static {v3}, Lcom/parrot/freeflight/view/NotificationBar;->access$100(Lcom/parrot/freeflight/view/NotificationBar;)Lcom/parrot/freeflight/notification/InAppNotification;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parrot/freeflight/notification/InAppNotification;->getSubTitleSpannable()Landroid/text/Spannable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_2
    return-void

    .line 162
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v2, p0, Lcom/parrot/freeflight/view/NotificationBar$3;->this$0:Lcom/parrot/freeflight/view/NotificationBar;

    invoke-static {v2}, Lcom/parrot/freeflight/view/NotificationBar;->access$200(Lcom/parrot/freeflight/view/NotificationBar;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/view/NotificationBar$3;->this$0:Lcom/parrot/freeflight/view/NotificationBar;

    invoke-static {v3}, Lcom/parrot/freeflight/view/NotificationBar;->access$100(Lcom/parrot/freeflight/view/NotificationBar;)Lcom/parrot/freeflight/notification/InAppNotification;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parrot/freeflight/notification/InAppNotification;->getTagColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_0

    .line 168
    :cond_2
    iget-object v2, p0, Lcom/parrot/freeflight/view/NotificationBar$3;->this$0:Lcom/parrot/freeflight/view/NotificationBar;

    invoke-static {v2}, Lcom/parrot/freeflight/view/NotificationBar;->access$300(Lcom/parrot/freeflight/view/NotificationBar;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/view/NotificationBar$3;->this$0:Lcom/parrot/freeflight/view/NotificationBar;

    invoke-static {v3}, Lcom/parrot/freeflight/view/NotificationBar;->access$100(Lcom/parrot/freeflight/view/NotificationBar;)Lcom/parrot/freeflight/notification/InAppNotification;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parrot/freeflight/notification/InAppNotification;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 175
    :cond_3
    iget-object v2, p0, Lcom/parrot/freeflight/view/NotificationBar$3;->this$0:Lcom/parrot/freeflight/view/NotificationBar;

    invoke-static {v2}, Lcom/parrot/freeflight/view/NotificationBar;->access$100(Lcom/parrot/freeflight/view/NotificationBar;)Lcom/parrot/freeflight/notification/InAppNotification;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/notification/InAppNotification;->getSubTitle()Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, "subtitle":Ljava/lang/String;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v5, :cond_4

    .line 177
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u2026"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 179
    :cond_4
    iget-object v2, p0, Lcom/parrot/freeflight/view/NotificationBar$3;->this$0:Lcom/parrot/freeflight/view/NotificationBar;

    invoke-static {v2}, Lcom/parrot/freeflight/view/NotificationBar;->access$400(Lcom/parrot/freeflight/view/NotificationBar;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 192
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 150
    return-void
.end method
