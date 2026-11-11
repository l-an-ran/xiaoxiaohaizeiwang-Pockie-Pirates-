.class public final Lcom/nd/commplatform/d/c/jo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nd/commplatform/d/c/jo$g;,
        Lcom/nd/commplatform/d/c/jo$h;,
        Lcom/nd/commplatform/d/c/jo$f;,
        Lcom/nd/commplatform/d/c/jo$e;,
        Lcom/nd/commplatform/d/c/jo$d;,
        Lcom/nd/commplatform/d/c/jo$b;,
        Lcom/nd/commplatform/d/c/jo$c;,
        Lcom/nd/commplatform/d/c/jo$i;,
        Lcom/nd/commplatform/d/c/jo$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/nd/commplatform/d/c/jo$i;->a:I

    if-lez v2, :cond_0

    sget v2, Lcom/nd/commplatform/d/c/jo$i;->a:I

    const-string v3, "nd3_button_margin_style"

    const-string v4, "style"

    invoke-virtual {v0, v3, v4, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-ne v2, v3, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v2, "nd3_button_margin_style"

    const-string v3, "style"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$i;->a:I

    const-string v2, "nd3_margin_style_20"

    const-string v3, "style"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$i;->b:I

    const-string v2, "nd3_option_edittext_style"

    const-string v3, "style"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$i;->c:I

    const-string v2, "nd3_option_item_margin_style"

    const-string v3, "style"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$i;->d:I

    const-string v2, "nd3_option_item_padding_style"

    const-string v3, "style"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$i;->e:I

    const-string v2, "nd3_option_margin_padding_style"

    const-string v3, "style"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$i;->f:I

    const-string v2, "nd3_option_margin_style"

    const-string v3, "style"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$i;->g:I

    const-string v2, "nd3_option_textview_style"

    const-string v3, "style"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$i;->h:I

    const-string v2, "nd3_photo_margin_style"

    const-string v3, "style"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$i;->i:I

    const-string v2, "nd3_text_margin_style_25"

    const-string v3, "style"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$i;->j:I

    const-string v2, "nd3_textview_0"

    const-string v3, "style"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$i;->k:I

    const-string v2, "nd3_textview_1"

    const-string v3, "style"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$i;->l:I

    const-string v2, "nd3_textview_2"

    const-string v3, "style"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$i;->m:I

    const-string v2, "nd3_textview_3"

    const-string v3, "style"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$i;->n:I

    const-string v2, "nd3_textview_4"

    const-string v3, "style"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$i;->o:I

    const-string v2, "nd3_textview_5"

    const-string v3, "style"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$i;->p:I

    const-string v2, "nd_check_version_style"

    const-string v3, "style"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$i;->q:I

    const-string v2, "nd_goods_item_style"

    const-string v3, "style"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$i;->r:I

    const-string v2, "nd3_bind_phonenumber_paddingTop"

    const-string v3, "dimen"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$c;->a:I

    const-string v2, "nd3_btn_text_size"

    const-string v3, "dimen"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$c;->b:I

    const-string v2, "nd3_divider_height"

    const-string v3, "dimen"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$c;->c:I

    const-string v2, "nd3_image_size"

    const-string v3, "dimen"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$c;->d:I

    const-string v2, "nd3_item_divider"

    const-string v3, "dimen"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$c;->e:I

    const-string v2, "nd3_item_height"

    const-string v3, "dimen"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$c;->f:I

    const-string v2, "nd3_logout_text_size"

    const-string v3, "dimen"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$c;->g:I

    const-string v2, "nd3_margin_size"

    const-string v3, "dimen"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$c;->h:I

    const-string v2, "nd3_network_error_content_text_size"

    const-string v3, "dimen"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$c;->i:I

    const-string v2, "nd3_network_error_tip_text_size"

    const-string v3, "dimen"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$c;->j:I

    const-string v2, "nd3_option_item_marginLeft"

    const-string v3, "dimen"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$c;->k:I

    const-string v2, "nd3_option_margin_top"

    const-string v3, "dimen"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$c;->l:I

    const-string v2, "nd3_pay_password_tip_text_size"

    const-string v3, "dimen"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$c;->m:I

    const-string v2, "nd3_pay_service_text_size"

    const-string v3, "dimen"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$c;->n:I

    const-string v2, "nd3_pay_tip_text_size"

    const-string v3, "dimen"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$c;->o:I

    const-string v2, "nd3_platform_image_size"

    const-string v3, "dimen"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$c;->p:I

    const-string v2, "nd3_platform_image_size_large"

    const-string v3, "dimen"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$c;->q:I

    const-string v2, "nd3_platform_padding_size"

    const-string v3, "dimen"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$c;->r:I

    const-string v2, "nd3_portrait_add_text_size"

    const-string v3, "dimen"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$c;->s:I

    const-string v2, "nd3_records_time_text_size"

    const-string v3, "dimen"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$c;->t:I

    const-string v2, "nd3_records_title_text_size"

    const-string v3, "dimen"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$c;->u:I

    const-string v2, "nd3_register_agreement_text_size"

    const-string v3, "dimen"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$c;->v:I

    const-string v2, "nd3_register_sendsms_text_size"

    const-string v3, "dimen"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$c;->w:I

    const-string v2, "nd_10"

    const-string v3, "dimen"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$c;->x:I

    const-string v2, "nd_20"

    const-string v3, "dimen"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$c;->y:I

    const-string v2, "nd_50"

    const-string v3, "dimen"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$c;->z:I

    const-string v2, "nd_about_size"

    const-string v3, "dimen"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$c;->A:I

    const-string v2, "nd_goods_detail_size"

    const-string v3, "dimen"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$c;->B:I

    const-string v2, "nd_goods_flag_h"

    const-string v3, "dimen"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$c;->C:I

    const-string v2, "nd_goods_flag_w"

    const-string v3, "dimen"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$c;->D:I

    const-string v2, "nd3_account_register_agreement_color"

    const-string v3, "color"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$b;->a:I

    const-string v2, "nd3_background"

    const-string v3, "color"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$b;->b:I

    const-string v2, "nd3_balance_color"

    const-string v3, "color"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$b;->c:I

    const-string v2, "nd3_black"

    const-string v3, "color"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$b;->d:I

    const-string v2, "nd3_blue"

    const-string v3, "color"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$b;->e:I

    const-string v2, "nd3_btn_font_color"

    const-string v3, "color"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$b;->f:I

    const-string v2, "nd3_conform_pay_font_color"

    const-string v3, "color"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$b;->g:I

    const-string v2, "nd3_dark_blue"

    const-string v3, "color"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$b;->h:I

    const-string v2, "nd3_dark_color"

    const-string v3, "color"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$b;->i:I

    const-string v2, "nd3_font_color"

    const-string v3, "color"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$b;->j:I

    const-string v2, "nd3_hint"

    const-string v3, "color"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$b;->k:I

    const-string v2, "nd3_list_view_divider"

    const-string v3, "color"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$b;->l:I

    const-string v2, "nd3_list_view_item_bg_1"

    const-string v3, "color"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$b;->m:I

    const-string v2, "nd3_list_view_item_bg_2"

    const-string v3, "color"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$b;->n:I

    const-string v2, "nd3_network_error_color"

    const-string v3, "color"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$b;->o:I

    const-string v2, "nd3_orchid_color"

    const-string v3, "color"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$b;->p:I

    const-string v2, "nd3_pay_color"

    const-string v3, "color"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$b;->q:I

    const-string v2, "nd3_portrait_add_color"

    const-string v3, "color"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$b;->r:I

    const-string v2, "nd3_recharge_pay_record_bg_color"

    const-string v3, "color"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$b;->s:I

    const-string v2, "nd3_records_time_bg_color_1"

    const-string v3, "color"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$b;->t:I

    const-string v2, "nd3_records_time_bg_color_2"

    const-string v3, "color"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$b;->u:I

    const-string v2, "nd3_records_time_color"

    const-string v3, "color"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$b;->v:I

    const-string v2, "nd3_records_title_color"

    const-string v3, "color"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$b;->w:I

    const-string v2, "nd3_red"

    const-string v3, "color"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$b;->x:I

    const-string v2, "nd3_regist_greement_bg"

    const-string v3, "color"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$b;->y:I

    const-string v2, "nd3_user_setting_hint_color"

    const-string v3, "color"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$b;->z:I

    const-string v2, "nd3_white"

    const-string v3, "color"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$b;->A:I

    const-string v2, "nd_btn_font_color"

    const-string v3, "color"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$b;->B:I

    const-string v2, "nd_font_color"

    const-string v3, "color"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$b;->C:I

    const-string v2, "nd_green"

    const-string v3, "color"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$b;->D:I

    const-string v2, "nd3_3rd_platform_icon"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->a:I

    const-string v2, "nd3_3rd_platform_icon_more"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->b:I

    const-string v2, "nd3_91"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->c:I

    const-string v2, "nd3_achieve"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->d:I

    const-string v2, "nd3_achievement_lock"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->e:I

    const-string v2, "nd3_activity_action_above_bg"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->f:I

    const-string v2, "nd3_add"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->g:I

    const-string v2, "nd3_agreement_logo"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->h:I

    const-string v2, "nd3_app_icon_default"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->i:I

    const-string v2, "nd3_background"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->j:I

    const-string v2, "nd3_background_xml"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->k:I

    const-string v2, "nd3_banner"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->l:I

    const-string v2, "nd3_banner_bg"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->m:I

    const-string v2, "nd3_banner_logo"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->n:I

    const-string v2, "nd3_bbs_icon"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->o:I

    const-string v2, "nd3_bg"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->p:I

    const-string v2, "nd3_bizarre_image"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->q:I

    const-string v2, "nd3_bk1"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->r:I

    const-string v2, "nd3_bm"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->s:I

    const-string v2, "nd3_bnt_01"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->t:I

    const-string v2, "nd3_bnt_zhuxiao"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->u:I

    const-string v2, "nd3_bottom_bar_bg"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->v:I

    const-string v2, "nd3_button"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->w:I

    const-string v2, "nd3_button1"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->x:I

    const-string v2, "nd3_button2"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->y:I

    const-string v2, "nd3_button_02"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->z:I

    const-string v2, "nd3_button_130_01"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->A:I

    const-string v2, "nd3_button_130_03"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->B:I

    const-string v2, "nd3_button_278"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->C:I

    const-string v2, "nd3_button_action"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->D:I

    const-string v2, "nd3_button_bg_02"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->E:I

    const-string v2, "nd3_button_bg_02_press"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->F:I

    const-string v2, "nd3_button_bg_dis"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->G:I

    const-string v2, "nd3_button_bg_dis02"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->H:I

    const-string v2, "nd3_button_logout"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->I:I

    const-string v2, "nd3_button_long"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->J:I

    const-string v2, "nd3_button_long_press"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->K:I

    const-string v2, "nd3_button_old"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->L:I

    const-string v2, "nd3_button_radio"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->M:I

    const-string v2, "nd3_button_x"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->N:I

    const-string v2, "nd3_button_x1"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->O:I

    const-string v2, "nd3_check_yes"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->P:I

    const-string v2, "nd3_checkbox_button"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->Q:I

    const-string v2, "nd3_close"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->R:I

    const-string v2, "nd3_default_portrait"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->S:I

    const-string v2, "nd3_default_portrait_big"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->T:I

    const-string v2, "nd3_friend_del_button"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->U:I

    const-string v2, "nd3_friend_section_bg"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->V:I

    const-string v2, "nd3_game_detail"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->W:I

    const-string v2, "nd3_game_error_bg"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->X:I

    const-string v2, "nd3_game_face"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->Y:I

    const-string v2, "nd3_game_head"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->Z:I

    const-string v2, "nd3_head_bg"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->aa:I

    const-string v2, "nd3_headbar"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->ab:I

    const-string v2, "nd3_horizontal_line"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->ac:I

    const-string v2, "nd3_icon11"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->ad:I

    const-string v2, "nd3_icon12"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->ae:I

    const-string v2, "nd3_icon_01"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->af:I

    const-string v2, "nd3_icon_05"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->ag:I

    const-string v2, "nd3_icon_06"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->ah:I

    const-string v2, "nd3_icon_07"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->ai:I

    const-string v2, "nd3_icon_08"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->aj:I

    const-string v2, "nd3_icon_21"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->ak:I

    const-string v2, "nd3_icon_22"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->al:I

    const-string v2, "nd3_icon_error"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->am:I

    const-string v2, "nd3_icon_more01"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->an:I

    const-string v2, "nd3_icon_more02"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->ao:I

    const-string v2, "nd3_icon_more03"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->ap:I

    const-string v2, "nd3_icon_more04"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->aq:I

    const-string v2, "nd3_icon_more05"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->ar:I

    const-string v2, "nd3_icon_more06"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->as:I

    const-string v2, "nd3_icon_point"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->at:I

    const-string v2, "nd3_icon_selected"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->au:I

    const-string v2, "nd3_image81"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->av:I

    const-string v2, "nd3_image82"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->aw:I

    const-string v2, "nd3_image_48_bg"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->ax:I

    const-string v2, "nd3_input_1"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->ay:I

    const-string v2, "nd3_input_2"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->az:I

    const-string v2, "nd3_input_bg"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->aA:I

    const-string v2, "nd3_input_gray"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->aB:I

    const-string v2, "nd3_inputbox_bg1"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->aC:I

    const-string v2, "nd3_invite_image"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->aD:I

    const-string v2, "nd3_leaderboard_default"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->aE:I

    const-string v2, "nd3_line"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->aF:I

    const-string v2, "nd3_list_bg"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->aG:I

    const-string v2, "nd3_list_separator"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->aH:I

    const-string v2, "nd3_mainfriend_1"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->aI:I

    const-string v2, "nd3_mainfriend_2"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->aJ:I

    const-string v2, "nd3_maingame_1"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->aK:I

    const-string v2, "nd3_maingame_2"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->aL:I

    const-string v2, "nd3_mainmessage_1"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->aM:I

    const-string v2, "nd3_mainmessage_2"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->aN:I

    const-string v2, "nd3_mainmore_1"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->aO:I

    const-string v2, "nd3_mainmore_2"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->aP:I

    const-string v2, "nd3_mainpage_1"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->aQ:I

    const-string v2, "nd3_mainpage_2"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->aR:I

    const-string v2, "nd3_message_item_1_bg"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->aS:I

    const-string v2, "nd3_message_item_2_bg"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->aT:I

    const-string v2, "nd3_mood_bg"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->aU:I

    const-string v2, "nd3_msge_friend"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->aV:I

    const-string v2, "nd3_msge_owen"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->aW:I

    const-string v2, "nd3_new_message"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->aX:I

    const-string v2, "nd3_new_message_flag"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->aY:I

    const-string v2, "nd3_pay_checkbox_button"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->aZ:I

    const-string v2, "nd3_platform_logo"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->ba:I

    const-string v2, "nd3_portrait_edit_bg"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->bb:I

    const-string v2, "nd3_progress_large"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->bc:I

    const-string v2, "nd3_rank_1"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->bd:I

    const-string v2, "nd3_rank_2"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->be:I

    const-string v2, "nd3_rank_3"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->bf:I

    const-string v2, "nd3_rank_choice_left_1"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->bg:I

    const-string v2, "nd3_rank_choice_left_2"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->bh:I

    const-string v2, "nd3_rank_choice_left_btn_bg"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->bi:I

    const-string v2, "nd3_rank_choice_middle_1"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->bj:I

    const-string v2, "nd3_rank_choice_middle_2"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->bk:I

    const-string v2, "nd3_rank_choice_middle_btn_bg"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->bl:I

    const-string v2, "nd3_rank_choice_right_1"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->bm:I

    const-string v2, "nd3_rank_choice_right_2"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->bn:I

    const-string v2, "nd3_rank_choice_right_btn_bg"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->bo:I

    const-string v2, "nd3_rank_image"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->bp:I

    const-string v2, "nd3_redbtn"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->bq:I

    const-string v2, "nd3_redbtn_down"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->br:I

    const-string v2, "nd3_regist_checked"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->bs:I

    const-string v2, "nd3_round_bg"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->bt:I

    const-string v2, "nd3_search_edit_bg"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->bu:I

    const-string v2, "nd3_search_edit_left"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->bv:I

    const-string v2, "nd3_search_layout_bg"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->bw:I

    const-string v2, "nd3_showplayer"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->bx:I

    const-string v2, "nd3_square_checkbox_button"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->by:I

    const-string v2, "nd3_switch_image"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->bz:I

    const-string v2, "nd3_switch_image_white"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->bA:I

    const-string v2, "nd3_title_bar_action_btn"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->bB:I

    const-string v2, "nd3_title_bar_action_btn_pressed"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->bC:I

    const-string v2, "nd3_title_bar_action_btn_xml"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->bD:I

    const-string v2, "nd3_title_bar_bg"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->bE:I

    const-string v2, "nd3_title_bar_return_btn"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->bF:I

    const-string v2, "nd3_title_bar_return_btn_pressed"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->bG:I

    const-string v2, "nd3_title_bar_return_btn_xml"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->bH:I

    const-string v2, "nd3_user_item_bg"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->bI:I

    const-string v2, "nd3_vertical_line"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->bJ:I

    const-string v2, "nd3_white_bg"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->bK:I

    const-string v2, "nd_ad"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->bL:I

    const-string v2, "nd_blue"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->bM:I

    const-string v2, "nd_blue1"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->bN:I

    const-string v2, "nd_blue2"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->bO:I

    const-string v2, "nd_book"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->bP:I

    const-string v2, "nd_btn_add"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->bQ:I

    const-string v2, "nd_btn_add_press"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->bR:I

    const-string v2, "nd_btn_buy"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->bS:I

    const-string v2, "nd_btn_buy_press"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->bT:I

    const-string v2, "nd_btn_reduce"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->bU:I

    const-string v2, "nd_btn_reduce_press"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->bV:I

    const-string v2, "nd_button_action_add"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->bW:I

    const-string v2, "nd_button_action_buy"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->bX:I

    const-string v2, "nd_button_action_reduce"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->bY:I

    const-string v2, "nd_c_blur"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->bZ:I

    const-string v2, "nd_c_blur1"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->ca:I

    const-string v2, "nd_c_blur2"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->cb:I

    const-string v2, "nd_change_account"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->cc:I

    const-string v2, "nd_direct_login"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->cd:I

    const-string v2, "nd_direct_logo"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->ce:I

    const-string v2, "nd_gamecoin"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->cf:I

    const-string v2, "nd_goods_count_input_bg"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->cg:I

    const-string v2, "nd_goods_default"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->ch:I

    const-string v2, "nd_goods_detail_default"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->ci:I

    const-string v2, "nd_goods_limit_stock"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->cj:I

    const-string v2, "nd_goods_limit_time"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->ck:I

    const-string v2, "nd_goods_no_stock"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->cl:I

    const-string v2, "nd_goods_price_down"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->cm:I

    const-string v2, "nd_green"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->cn:I

    const-string v2, "nd_green1"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->co:I

    const-string v2, "nd_green2"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->cp:I

    const-string v2, "nd_input"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->cq:I

    const-string v2, "nd_leaderboard_left_1"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->cr:I

    const-string v2, "nd_leaderboard_left_2"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->cs:I

    const-string v2, "nd_leaderboard_left_btn_bg"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->ct:I

    const-string v2, "nd_leaderboard_right_1"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->cu:I

    const-string v2, "nd_leaderboard_right_2"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->cv:I

    const-string v2, "nd_leaderboard_right_btn_bg"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->cw:I

    const-string v2, "nd_list_btn_delete_normal"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->cx:I

    const-string v2, "nd_list_btn_delete_pressed"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->cy:I

    const-string v2, "nd_list_btn_delete_selector"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->cz:I

    const-string v2, "nd_login_btn_land_selector"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->cA:I

    const-string v2, "nd_login_btn_normal_land"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->cB:I

    const-string v2, "nd_login_btn_normal_portrait"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->cC:I

    const-string v2, "nd_login_btn_portrait_selector"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->cD:I

    const-string v2, "nd_login_btn_pressed_land"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->cE:I

    const-string v2, "nd_login_btn_pressed_portrait"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->cF:I

    const-string v2, "nd_logo48"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->cG:I

    const-string v2, "nd_register_btn_normal_portrait"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->cH:I

    const-string v2, "nd_register_btn_portrait_selector"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->cI:I

    const-string v2, "nd_register_btn_pressed_portrait"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->cJ:I

    const-string v2, "nd_theme"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->cK:I

    const-string v2, "nd_true"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->cL:I

    const-string v2, "nd_warn"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->cM:I

    const-string v2, "nd_white_btn"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->cN:I

    const-string v2, "nd_white_btn_1"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->cO:I

    const-string v2, "nd_white_btn_2"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->cP:I

    const-string v2, "nd_winning"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->cQ:I

    const-string v2, "nd_xline"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$d;->cR:I

    const-string v2, "nd3_91_image_id"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->a:I

    const-string v2, "nd3_91bean_manage_layout"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->b:I

    const-string v2, "nd3_account_bind_bind_account"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->c:I

    const-string v2, "nd3_account_bind_bind_complete"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->d:I

    const-string v2, "nd3_account_bind_bind_content"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->e:I

    const-string v2, "nd3_account_bind_bind_layout"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->f:I

    const-string v2, "nd3_account_bind_bind_more"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->g:I

    const-string v2, "nd3_account_bind_bind_password"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->h:I

    const-string v2, "nd3_account_bind_layout"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->i:I

    const-string v2, "nd3_account_bind_no"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->j:I

    const-string v2, "nd3_account_bind_register_account"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->k:I

    const-string v2, "nd3_account_bind_register_agreement"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->l:I

    const-string v2, "nd3_account_bind_register_is_agree"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->m:I

    const-string v2, "nd3_account_bind_register_layout"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->n:I

    const-string v2, "nd3_account_bind_register_nickname"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->o:I

    const-string v2, "nd3_account_bind_register_password"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->p:I

    const-string v2, "nd3_account_bind_register_send_sms"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->q:I

    const-string v2, "nd3_account_bind_yes"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->r:I

    const-string v2, "nd3_account_email_item_title"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->s:I

    const-string v2, "nd3_account_login_account"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->t:I

    const-string v2, "nd3_account_login_autologin"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->u:I

    const-string v2, "nd3_account_login_forget_password"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->v:I

    const-string v2, "nd3_account_login_is_autologin"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->w:I

    const-string v2, "nd3_account_login_item_checked"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->x:I

    const-string v2, "nd3_account_login_item_delete"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->y:I

    const-string v2, "nd3_account_login_item_layout"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->z:I

    const-string v2, "nd3_account_login_item_title"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->A:I

    const-string v2, "nd3_account_login_layout"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->B:I

    const-string v2, "nd3_account_login_layout_land"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->C:I

    const-string v2, "nd3_account_login_layout_portrait"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->D:I

    const-string v2, "nd3_account_login_log"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->E:I

    const-string v2, "nd3_account_login_more"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->F:I

    const-string v2, "nd3_account_login_other"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->G:I

    const-string v2, "nd3_account_login_other_layout"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->H:I

    const-string v2, "nd3_account_login_password"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->I:I

    const-string v2, "nd3_account_login_reg"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->J:I

    const-string v2, "nd3_account_login_reg_tips"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->K:I

    const-string v2, "nd3_account_manage_complete"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->L:I

    const-string v2, "nd3_account_manage_layout"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->M:I

    const-string v2, "nd3_account_manage_login"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->N:I

    const-string v2, "nd3_account_manage_titlebar"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->O:I

    const-string v2, "nd3_account_other_login_cannot_unbinded_group"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->P:I

    const-string v2, "nd3_account_other_login_group"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->Q:I

    const-string v2, "nd3_account_other_login_layout"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->R:I

    const-string v2, "nd3_account_other_login_unbinded_group"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->S:I

    const-string v2, "nd3_account_register_account"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->T:I

    const-string v2, "nd3_account_register_agreement"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->U:I

    const-string v2, "nd3_account_register_agreement_content"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->V:I

    const-string v2, "nd3_account_register_agreement_layout"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->W:I

    const-string v2, "nd3_account_register_complete"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->X:I

    const-string v2, "nd3_account_register_is_agree"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->Y:I

    const-string v2, "nd3_account_register_layout"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->Z:I

    const-string v2, "nd3_account_register_login"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->aa:I

    const-string v2, "nd3_account_register_nickname"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->ab:I

    const-string v2, "nd3_account_register_password"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->ac:I

    const-string v2, "nd3_account_register_phone_agreement"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->ad:I

    const-string v2, "nd3_account_register_phone_code"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->ae:I

    const-string v2, "nd3_account_register_phone_gain"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->af:I

    const-string v2, "nd3_account_register_phone_is_agree"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->ag:I

    const-string v2, "nd3_account_register_phone_layout"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->ah:I

    const-string v2, "nd3_account_register_phone_password"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->ai:I

    const-string v2, "nd3_account_register_phone_phone"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->aj:I

    const-string v2, "nd3_account_register_quick"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->ak:I

    const-string v2, "nd3_account_register_titlebar"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->al:I

    const-string v2, "nd3_account_search_rl"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->am:I

    const-string v2, "nd3_account_secret_find_layout"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->an:I

    const-string v2, "nd3_account_secret_set_layout"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->ao:I

    const-string v2, "nd3_account_sina_account"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->ap:I

    const-string v2, "nd3_account_sina_content"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->aq:I

    const-string v2, "nd3_account_sina_layout"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->ar:I

    const-string v2, "nd3_account_sina_password"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->as:I

    const-string v2, "nd3_achieve_desc"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->at:I

    const-string v2, "nd3_achieve_image"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->au:I

    const-string v2, "nd3_achieve_layout"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->av:I

    const-string v2, "nd3_achieve_layout_land"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->aw:I

    const-string v2, "nd3_achieve_name"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->ax:I

    const-string v2, "nd3_achieve_remarks"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->ay:I

    const-string v2, "nd3_activity_content"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->az:I

    const-string v2, "nd3_activity_content_1_rl"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->aA:I

    const-string v2, "nd3_activity_content_2_rl"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->aB:I

    const-string v2, "nd3_activity_content_3_btn"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->aC:I

    const-string v2, "nd3_activity_content_action_btn"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->aD:I

    const-string v2, "nd3_activity_content_plus_image"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->aE:I

    const-string v2, "nd3_activity_content_reg_1"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->aF:I

    const-string v2, "nd3_activity_content_reg_2"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->aG:I

    const-string v2, "nd3_activity_content_reg_3"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->aH:I

    const-string v2, "nd3_activity_description_layout"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->aI:I

    const-string v2, "nd3_activity_game_action_btn"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->aJ:I

    const-string v2, "nd3_activity_head_image"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->aK:I

    const-string v2, "nd3_activity_head_layout"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->aL:I

    const-string v2, "nd3_activity_head_rl"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->aM:I

    const-string v2, "nd3_activity_head_switch_image"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->aN:I

    const-string v2, "nd3_activity_listview"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->aO:I

    const-string v2, "nd3_activity_user_mood"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->aP:I

    const-string v2, "nd3_activity_user_nickname"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->aQ:I

    const-string v2, "nd3_add_friend_listview"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->aR:I

    const-string v2, "nd3_add_receiver"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->aS:I

    const-string v2, "nd3_address"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->aT:I

    const-string v2, "nd3_address_label"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->aU:I

    const-string v2, "nd3_advance_search_rl"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->aV:I

    const-string v2, "nd3_all_rank_btn"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->aW:I

    const-string v2, "nd3_all_rank_btn_landscape"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->aX:I

    const-string v2, "nd3_app_action_btn"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->aY:I

    const-string v2, "nd3_app_grade"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->aZ:I

    const-string v2, "nd3_app_grade_desc"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->ba:I

    const-string v2, "nd3_app_image"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->bb:I

    const-string v2, "nd3_app_name_txt"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->bc:I

    const-string v2, "nd3_app_property_image_id"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->bd:I

    const-string v2, "nd3_app_property_label"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->be:I

    const-string v2, "nd3_app_property_layout"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->bf:I

    const-string v2, "nd3_appname"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->bg:I

    const-string v2, "nd3_appname_txt"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->bh:I

    const-string v2, "nd3_appversion"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->bi:I

    const-string v2, "nd3_banner_title"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->bj:I

    const-string v2, "nd3_bbs_detail_layout"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->bk:I

    const-string v2, "nd3_bbs_detail_layout_land"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->bl:I

    const-string v2, "nd3_bbs_image_id"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->bm:I

    const-string v2, "nd3_bbs_label"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->bn:I

    const-string v2, "nd3_bind_third_account"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->bo:I

    const-string v2, "nd3_bind_third_account_timeout"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->bp:I

    const-string v2, "nd3_bind_third_account_timeout_parent"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->bq:I

    const-string v2, "nd3_bizarre_button"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->br:I

    const-string v2, "nd3_bizarre_image_id"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->bs:I

    const-string v2, "nd3_bizarre_jump_image"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->bt:I

    const-string v2, "nd3_bizarre_label"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->bu:I

    const-string v2, "nd3_bizarre_layout"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->bv:I

    const-string v2, "nd3_bizarre_layout_land"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->bw:I

    const-string v2, "nd3_borndata"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->bx:I

    const-string v2, "nd3_borndata_label"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->by:I

    const-string v2, "nd3_bottom_layout"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->bz:I

    const-string v2, "nd3_bottombar"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->bA:I

    const-string v2, "nd3_cancel_btn"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->bB:I

    const-string v2, "nd3_cancle_download"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->bC:I

    const-string v2, "nd3_category_flag"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->bD:I

    const-string v2, "nd3_category_image"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->bE:I

    const-string v2, "nd3_category_item_rl"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->bF:I

    const-string v2, "nd3_category_name"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->bG:I

    const-string v2, "nd3_comment_layout"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->bH:I

    const-string v2, "nd3_company"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->bI:I

    const-string v2, "nd3_confirm_pay"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->bJ:I

    const-string v2, "nd3_content"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->bK:I

    const-string v2, "nd3_count_text"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->bL:I

    const-string v2, "nd3_curren_account"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->bM:I

    const-string v2, "nd3_debug"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->bN:I

    const-string v2, "nd3_delete_friend_button"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->bO:I

    const-string v2, "nd3_empty_listview_no_data_txt"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->bP:I

    const-string v2, "nd3_empty_listview_txt"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->bQ:I

    const-string v2, "nd3_enhance_advice_btn"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->bR:I

    const-string v2, "nd3_error_desc"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->bS:I

    const-string v2, "nd3_error_image"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->bT:I

    const-string v2, "nd3_fangle_images"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->bU:I

    const-string v2, "nd3_fangle_time_txt"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->bV:I

    const-string v2, "nd3_feedback_edit"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->bW:I

    const-string v2, "nd3_feedback_type_group"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->bX:I

    const-string v2, "nd3_footer_more_loading"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->bY:I

    const-string v2, "nd3_forget_password_layout"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->bZ:I

    const-string v2, "nd3_fourth_id"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->ca:I

    const-string v2, "nd3_friend_button"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->cb:I

    const-string v2, "nd3_friend_empty_txt"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->cc:I

    const-string v2, "nd3_friend_image"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->cd:I

    const-string v2, "nd3_friend_layout"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->ce:I

    const-string v2, "nd3_friend_list"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->cf:I

    const-string v2, "nd3_friend_list_item"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->cg:I

    const-string v2, "nd3_friend_panel"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->ch:I

    const-string v2, "nd3_friend_rank_btn"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->ci:I

    const-string v2, "nd3_friend_rank_btn_landscape"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->cj:I

    const-string v2, "nd3_friend_search_edit"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->ck:I

    const-string v2, "nd3_friend_search_list"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->cl:I

    const-string v2, "nd3_friend_search_rl"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->cm:I

    const-string v2, "nd3_friend_section_rl"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->cn:I

    const-string v2, "nd3_friend_switcher"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->co:I

    const-string v2, "nd3_friend_text"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->cp:I

    const-string v2, "nd3_frist_id"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->cq:I

    const-string v2, "nd3_game_count"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->cr:I

    const-string v2, "nd3_game_detail_layout"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->cs:I

    const-string v2, "nd3_game_error_layout"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->ct:I

    const-string v2, "nd3_game_image"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->cu:I

    const-string v2, "nd3_game_image_id"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->cv:I

    const-string v2, "nd3_game_image_layout"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->cw:I

    const-string v2, "nd3_game_label"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->cx:I

    const-string v2, "nd3_game_layout"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->cy:I

    const-string v2, "nd3_game_main"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->cz:I

    const-string v2, "nd3_game_text"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->cA:I

    const-string v2, "nd3_head_image"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->cB:I

    const-string v2, "nd3_head_image_land"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->cC:I

    const-string v2, "nd3_head_switch_image"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->cD:I

    const-string v2, "nd3_header_txt"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->cE:I

    const-string v2, "nd3_hint_button"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->cF:I

    const-string v2, "nd3_home_image"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->cG:I

    const-string v2, "nd3_home_land"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->cH:I

    const-string v2, "nd3_home_land_stub"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->cI:I

    const-string v2, "nd3_home_layout"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->cJ:I

    const-string v2, "nd3_home_portrait"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->cK:I

    const-string v2, "nd3_home_portrait_stub"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->cL:I

    const-string v2, "nd3_home_text"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->cM:I

    const-string v2, "nd3_info_group_layout"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->cN:I

    const-string v2, "nd3_info_label"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->cO:I

    const-string v2, "nd3_info_layout"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->cP:I

    const-string v2, "nd3_invite_91friend_layout"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->cQ:I

    const-string v2, "nd3_invite_friend_tip"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->cR:I

    const-string v2, "nd3_invite_image_id"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->cS:I

    const-string v2, "nd3_invite_label"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->cT:I

    const-string v2, "nd3_invite_layout"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->cU:I

    const-string v2, "nd3_invite_layout_land"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->cV:I

    const-string v2, "nd3_invite_sinafriend_layout"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->cW:I

    const-string v2, "nd3_leaderboard_self"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->cX:I

    const-string v2, "nd3_left_btn_id"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->cY:I

    const-string v2, "nd3_line"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->cZ:I

    const-string v2, "nd3_listview_footer_txt"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->da:I

    const-string v2, "nd3_listview_template"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->db:I

    const-string v2, "nd3_local_album_btn"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->dc:I

    const-string v2, "nd3_may_known_category_rl"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->dd:I

    const-string v2, "nd3_may_known_category_rl_ext"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->de:I

    const-string v2, "nd3_message"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->df:I

    const-string v2, "nd3_message_content"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->dg:I

    const-string v2, "nd3_message_count"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->dh:I

    const-string v2, "nd3_message_image"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->di:I

    const-string v2, "nd3_message_image_layout"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->dj:I

    const-string v2, "nd3_message_item_layout"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->dk:I

    const-string v2, "nd3_message_layout"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->dl:I

    const-string v2, "nd3_message_listview"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->dm:I

    const-string v2, "nd3_message_rcv_txt"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->dn:I

    const-string v2, "nd3_message_refresh_btn"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->do:I

    const-string v2, "nd3_message_send_btn"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->dp:I

    const-string v2, "nd3_message_send_item_layout"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->dq:I

    const-string v2, "nd3_message_send_txt"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->dr:I

    const-string v2, "nd3_message_switcher_root_rl"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->ds:I

    const-string v2, "nd3_message_text"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->dt:I

    const-string v2, "nd3_message_time_txt"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->du:I

    const-string v2, "nd3_message_type_group"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->dv:I

    const-string v2, "nd3_messagetiem_txt"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->dw:I

    const-string v2, "nd3_money_text"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->dx:I

    const-string v2, "nd3_mood"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->dy:I

    const-string v2, "nd3_mood_land"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->dz:I

    const-string v2, "nd3_more_account_account_id"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->dA:I

    const-string v2, "nd3_more_account_bind_layout"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->dB:I

    const-string v2, "nd3_more_account_bind_phonenumber_label"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->dC:I

    const-string v2, "nd3_more_account_bind_phonenumber_new"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->dD:I

    const-string v2, "nd3_more_account_bind_phonenumber_status"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->dE:I

    const-string v2, "nd3_more_account_cannot_bind_layout"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->dF:I

    const-string v2, "nd3_more_account_cannot_bind_title"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->dG:I

    const-string v2, "nd3_more_account_is_autologin"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->dH:I

    const-string v2, "nd3_more_account_layout"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->dI:I

    const-string v2, "nd3_more_account_other"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->dJ:I

    const-string v2, "nd3_more_account_other_bind"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->dK:I

    const-string v2, "nd3_more_account_other_binded_title"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->dL:I

    const-string v2, "nd3_more_account_other_icon"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->dM:I

    const-string v2, "nd3_more_account_other_title"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->dN:I

    const-string v2, "nd3_more_account_password"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->dO:I

    const-string v2, "nd3_more_account_password_title"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->dP:I

    const-string v2, "nd3_more_change_account"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->dQ:I

    const-string v2, "nd3_more_consume_detail_item_app"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->dR:I

    const-string v2, "nd3_more_consume_detail_item_date"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->dS:I

    const-string v2, "nd3_more_consume_detail_item_money"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->dT:I

    const-string v2, "nd3_more_consume_detail_item_number"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->dU:I

    const-string v2, "nd3_more_consume_detail_item_order"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->dV:I

    const-string v2, "nd3_more_consume_detail_item_product"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->dW:I

    const-string v2, "nd3_more_consume_detail_layout"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->dX:I

    const-string v2, "nd3_more_consume_layout"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->dY:I

    const-string v2, "nd3_more_image"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->dZ:I

    const-string v2, "nd3_more_info_address"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->ea:I

    const-string v2, "nd3_more_info_date"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->eb:I

    const-string v2, "nd3_more_info_layout"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->ec:I

    const-string v2, "nd3_more_info_nickname"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->ed:I

    const-string v2, "nd3_more_info_portrait"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->ee:I

    const-string v2, "nd3_more_info_portrait_add"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->ef:I

    const-string v2, "nd3_more_info_portrait_edit"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->eg:I

    const-string v2, "nd3_more_info_portrait_layout"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->eh:I

    const-string v2, "nd3_more_info_real_name"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->ei:I

    const-string v2, "nd3_more_info_sex"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->ej:I

    const-string v2, "nd3_more_layout"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->ek:I

    const-string v2, "nd3_more_more_about"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->el:I

    const-string v2, "nd3_more_more_account"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->em:I

    const-string v2, "nd3_more_more_feekback"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->en:I

    const-string v2, "nd3_more_more_info"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->eo:I

    const-string v2, "nd3_more_more_layout"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->ep:I

    const-string v2, "nd3_more_more_layout_list"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->eq:I

    const-string v2, "nd3_more_more_permission"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->er:I

    const-string v2, "nd3_more_more_recharge"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->es:I

    const-string v2, "nd3_more_more_records"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->et:I

    const-string v2, "nd3_more_more_update"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->eu:I

    const-string v2, "nd3_more_more_version"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->ev:I

    const-string v2, "nd3_more_no_password_layout"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->ew:I

    const-string v2, "nd3_more_no_password_new"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->ex:I

    const-string v2, "nd3_more_no_password_old"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->ey:I

    const-string v2, "nd3_more_password_layout"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->ez:I

    const-string v2, "nd3_more_password_new"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->eA:I

    const-string v2, "nd3_more_password_old"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->eB:I

    const-string v2, "nd3_more_permission_check"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->eC:I

    const-string v2, "nd3_more_permission_check_tip"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->eD:I

    const-string v2, "nd3_more_permission_layout"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->eE:I

    const-string v2, "nd3_more_permission_no"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->eF:I

    const-string v2, "nd3_more_permission_no_tip"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->eG:I

    const-string v2, "nd3_more_permission_yes"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->eH:I

    const-string v2, "nd3_more_permission_yes_tip"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->eI:I

    const-string v2, "nd3_more_recharge_detail_item_date"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->eJ:I

    const-string v2, "nd3_more_recharge_detail_item_money"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->eK:I

    const-string v2, "nd3_more_recharge_detail_item_type"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->eL:I

    const-string v2, "nd3_more_recharge_detail_layout"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->eM:I

    const-string v2, "nd3_more_recharge_layout"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->eN:I

    const-string v2, "nd3_more_records_consumes"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->eO:I

    const-string v2, "nd3_more_records_layout"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->eP:I

    const-string v2, "nd3_more_records_recharges"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->eQ:I

    const-string v2, "nd3_more_text"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->eR:I

    const-string v2, "nd3_msge"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->eS:I

    const-string v2, "nd3_msge_head_image"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->eT:I

    const-string v2, "nd3_msge_head_layout"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->eU:I

    const-string v2, "nd3_my_message_btn"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->eV:I

    const-string v2, "nd3_my_msge"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->eW:I

    const-string v2, "nd3_name"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->eX:I

    const-string v2, "nd3_name_id"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->eY:I

    const-string v2, "nd3_name_label"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->eZ:I

    const-string v2, "nd3_new_message_flag"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->fa:I

    const-string v2, "nd3_nickname"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->fb:I

    const-string v2, "nd3_nickname_label"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->fc:I

    const-string v2, "nd3_nickname_search_rl"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->fd:I

    const-string v2, "nd3_pay_friend_item_checked"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->fe:I

    const-string v2, "nd3_pay_friend_item_icon"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->ff:I

    const-string v2, "nd3_pay_friend_item_layout"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->fg:I

    const-string v2, "nd3_pay_friend_item_mood"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->fh:I

    const-string v2, "nd3_pay_friend_item_name"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->fi:I

    const-string v2, "nd3_pay_pass_exit"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->fj:I

    const-string v2, "nd3_pay_pass_goto_consumes"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->fk:I

    const-string v2, "nd3_pay_pass_layout"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->fl:I

    const-string v2, "nd3_pay_password_check_edit"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->fm:I

    const-string v2, "nd3_pay_password_check_layout"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->fn:I

    const-string v2, "nd3_pay_password_check_text"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->fo:I

    const-string v2, "nd3_pay_select_friend_layout"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->fp:I

    const-string v2, "nd3_pay_select_friend_list"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->fq:I

    const-string v2, "nd3_pay_template_count"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->fr:I

    const-string v2, "nd3_pay_template_current_balance"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->fs:I

    const-string v2, "nd3_pay_template_layout"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->ft:I

    const-string v2, "nd3_pay_template_money"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->fu:I

    const-string v2, "nd3_pay_template_order_list"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->fv:I

    const-string v2, "nd3_pay_template_product"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->fw:I

    const-string v2, "nd3_pay_template_recharges"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->fx:I

    const-string v2, "nd3_person_info_layout"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->fy:I

    const-string v2, "nd3_person_info_layout_land"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->fz:I

    const-string v2, "nd3_person_layout"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->fA:I

    const-string v2, "nd3_person_layout_land"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->fB:I

    const-string v2, "nd3_photo_share"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->fC:I

    const-string v2, "nd3_problem_feedback_btn"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->fD:I

    const-string v2, "nd3_progressBarHorizontal"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->fE:I

    const-string v2, "nd3_progress_tip"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->fF:I

    const-string v2, "nd3_pz_btn"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->fG:I

    const-string v2, "nd3_rank_category_listview"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->fH:I

    const-string v2, "nd3_rank_layout"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->fI:I

    const-string v2, "nd3_rank_layout_land"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->fJ:I

    const-string v2, "nd3_rank_listview"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->fK:I

    const-string v2, "nd3_rank_ret_btn"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->fL:I

    const-string v2, "nd3_rank_share_btn"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->fM:I

    const-string v2, "nd3_rank_top"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->fN:I

    const-string v2, "nd3_rank_txt"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->fO:I

    const-string v2, "nd3_receiver"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->fP:I

    const-string v2, "nd3_receiver_label"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->fQ:I

    const-string v2, "nd3_receiver_layout"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->fR:I

    const-string v2, "nd3_recharge_count_rl"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->fS:I

    const-string v2, "nd3_recharge_count_txt"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->fT:I

    const-string v2, "nd3_recharge_desc_txt"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->fU:I

    const-string v2, "nd3_recharge_time_txt"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->fV:I

    const-string v2, "nd3_records_item_id"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->fW:I

    const-string v2, "nd3_remarks"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->fX:I

    const-string v2, "nd3_remarks_label"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->fY:I

    const-string v2, "nd3_remarks_layout"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->fZ:I

    const-string v2, "nd3_return"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->ga:I

    const-string v2, "nd3_right_btn_id"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->gb:I

    const-string v2, "nd3_sdkcompany"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->gc:I

    const-string v2, "nd3_sdkname"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->gd:I

    const-string v2, "nd3_sdkversion"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->ge:I

    const-string v2, "nd3_second_id"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->gf:I

    const-string v2, "nd3_send"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->gg:I

    const-string v2, "nd3_send_msge"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->gh:I

    const-string v2, "nd3_servicephone_txt"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->gi:I

    const-string v2, "nd3_sex"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->gj:I

    const-string v2, "nd3_sex_label"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->gk:I

    const-string v2, "nd3_share_account_switch"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->gl:I

    const-string v2, "nd3_share_account_txt"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->gm:I

    const-string v2, "nd3_share_my_achieve"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->gn:I

    const-string v2, "nd3_show_image_id"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->go:I

    const-string v2, "nd3_show_label"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->gp:I

    const-string v2, "nd3_show_player_layout"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->gq:I

    const-string v2, "nd3_show_player_layout_land"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->gr:I

    const-string v2, "nd3_sina_image_id"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->gs:I

    const-string v2, "nd3_sina_sperator_line_id"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->gt:I

    const-string v2, "nd3_softwareName_txt"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->gu:I

    const-string v2, "nd3_softwaredownloadpercent_txt"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->gv:I

    const-string v2, "nd3_switch_image"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->gw:I

    const-string v2, "nd3_switch_image_land"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->gx:I

    const-string v2, "nd3_swtich_image"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->gy:I

    const-string v2, "nd3_sys_message_btn"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->gz:I

    const-string v2, "nd3_sysmessage_action_rl"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->gA:I

    const-string v2, "nd3_sysmessage_head_image"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->gB:I

    const-string v2, "nd3_sysmessage_head_layout"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->gC:I

    const-string v2, "nd3_sysmessage_head_rl"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->gD:I

    const-string v2, "nd3_sysmessage_head_switch"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->gE:I

    const-string v2, "nd3_sysmessage_head_switch_image"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->gF:I

    const-string v2, "nd3_sysmessage_user_nickname"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->gG:I

    const-string v2, "nd3_sysmessge_content"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->gH:I

    const-string v2, "nd3_sysmessge_content_rl"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->gI:I

    const-string v2, "nd3_sysmessge_time"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->gJ:I

    const-string v2, "nd3_tel_number_edit"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->gK:I

    const-string v2, "nd3_third_id"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->gL:I

    const-string v2, "nd3_thirdplatform_layout"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->gM:I

    const-string v2, "nd3_time"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->gN:I

    const-string v2, "nd3_time_text"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->gO:I

    const-string v2, "nd3_title"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->gP:I

    const-string v2, "nd3_title_bar_button_left"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->gQ:I

    const-string v2, "nd3_title_bar_button_right"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->gR:I

    const-string v2, "nd3_title_bar_layout"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->gS:I

    const-string v2, "nd3_title_bar_progressbar"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->gT:I

    const-string v2, "nd3_title_bar_title"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->gU:I

    const-string v2, "nd3_title_progress_bar_id"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->gV:I

    const-string v2, "nd3_title_txt_id"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->gW:I

    const-string v2, "nd3_titlepanel"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->gX:I

    const-string v2, "nd3_top_layout"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->gY:I

    const-string v2, "nd3_topbar"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->gZ:I

    const-string v2, "nd3_type_text"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->ha:I

    const-string v2, "nd3_unbind_third_account"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->hb:I

    const-string v2, "nd3_unbind_third_account_parent"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->hc:I

    const-string v2, "nd3_unbind_tip_txt"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->hd:I

    const-string v2, "nd3_user_action_btn"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->he:I

    const-string v2, "nd3_user_content"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->hf:I

    const-string v2, "nd3_user_content_rl"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->hg:I

    const-string v2, "nd3_user_image"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->hh:I

    const-string v2, "nd3_user_item_content_rl"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->hi:I

    const-string v2, "nd3_user_message_title_bar_rl"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->hj:I

    const-string v2, "nd3_user_name_rl"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->hk:I

    const-string v2, "nd3_user_name_txt"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->hl:I

    const-string v2, "nd3_version_update"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->hm:I

    const-string v2, "nd3_web_load_progress"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->hn:I

    const-string v2, "nd3_write_message"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->ho:I

    const-string v2, "nd_account"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->hp:I

    const-string v2, "nd_account_listview"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->hq:I

    const-string v2, "nd_activityinfo"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->hr:I

    const-string v2, "nd_add_goods"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->hs:I

    const-string v2, "nd_app_image"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->ht:I

    const-string v2, "nd_app_name"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->hu:I

    const-string v2, "nd_bind"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->hv:I

    const-string v2, "nd_bind_edit_code"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->hw:I

    const-string v2, "nd_bind_edit_phone_number"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->hx:I

    const-string v2, "nd_bind_group_code"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->hy:I

    const-string v2, "nd_bind_phone_lottery"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->hz:I

    const-string v2, "nd_bind_phone_number_bind"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->hA:I

    const-string v2, "nd_bind_phone_number_bind_group_phone_number"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->hB:I

    const-string v2, "nd_bind_phone_number_gain"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->hC:I

    const-string v2, "nd_bind_phone_number_layout"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->hD:I

    const-string v2, "nd_bind_phone_result"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->hE:I

    const-string v2, "nd_btn_delete"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->hF:I

    const-string v2, "nd_btn_login"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->hG:I

    const-string v2, "nd_control_center"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->hH:I

    const-string v2, "nd_down_tips"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->hI:I

    const-string v2, "nd_find_password_bind"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->hJ:I

    const-string v2, "nd_find_password_bind_edit_account"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->hK:I

    const-string v2, "nd_find_password_bind_edit_code"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->hL:I

    const-string v2, "nd_find_password_bind_edit_phone_number"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->hM:I

    const-string v2, "nd_find_password_gain"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->hN:I

    const-string v2, "nd_find_password_gain_text"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->hO:I

    const-string v2, "nd_find_password_layout"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->hP:I

    const-string v2, "nd_find_password_tips"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->hQ:I

    const-string v2, "nd_goods_action_btn"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->hR:I

    const-string v2, "nd_goods_buy_max_txt"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->hS:I

    const-string v2, "nd_goods_buy_time_txt"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->hT:I

    const-string v2, "nd_goods_content"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->hU:I

    const-string v2, "nd_goods_count"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->hV:I

    const-string v2, "nd_goods_count_rl"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->hW:I

    const-string v2, "nd_goods_desc_rl"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->hX:I

    const-string v2, "nd_goods_desc_title"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->hY:I

    const-string v2, "nd_goods_desc_txt"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->hZ:I

    const-string v2, "nd_goods_detail_left_rl"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->ia:I

    const-string v2, "nd_goods_detail_right_rl"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->ib:I

    const-string v2, "nd_goods_flag_image"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->ic:I

    const-string v2, "nd_goods_icon"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->id:I

    const-string v2, "nd_goods_image"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->ie:I

    const-string v2, "nd_goods_item_content_rl"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->if:I

    const-string v2, "nd_goods_listview"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->ig:I

    const-string v2, "nd_goods_name"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->ih:I

    const-string v2, "nd_goods_name_txt"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->ii:I

    const-string v2, "nd_goods_price_org_txt"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->ij:I

    const-string v2, "nd_goods_price_rl"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->ik:I

    const-string v2, "nd_goods_price_sale_txt"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->il:I

    const-string v2, "nd_goods_price_txt"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->im:I

    const-string v2, "nd_goods_use_time_txt"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->in:I

    const-string v2, "nd_goods_valid_time_txt"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->io:I

    const-string v2, "nd_goto_login"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->ip:I

    const-string v2, "nd_guest_regist"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->iq:I

    const-string v2, "nd_head_rl"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->ir:I

    const-string v2, "nd_iv_check"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->is:I

    const-string v2, "nd_iv_delete"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->it:I

    const-string v2, "nd_join"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->iu:I

    const-string v2, "nd_laster_version"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->iv:I

    const-string v2, "nd_leaderboard_emptyview"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->iw:I

    const-string v2, "nd_leave"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->ix:I

    const-string v2, "nd_login"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->iy:I

    const-string v2, "nd_logo"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->iz:I

    const-string v2, "nd_lottery_exit"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->iA:I

    const-string v2, "nd_lottery_tip"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->iB:I

    const-string v2, "nd_merchantInfo"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->iC:I

    const-string v2, "nd_more_account_bind_switch"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->iD:I

    const-string v2, "nd_more_permission_pay_pwd_check"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->iE:I

    const-string v2, "nd_new_app_desc"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->iF:I

    const-string v2, "nd_number_gain_text"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->iG:I

    const-string v2, "nd_pay_success_tips"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->iH:I

    const-string v2, "nd_payprogress"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->iI:I

    const-string v2, "nd_rank_time_type_all_btn"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->iJ:I

    const-string v2, "nd_rank_time_type_group"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->iK:I

    const-string v2, "nd_rank_time_type_group_portrait"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->iL:I

    const-string v2, "nd_rank_time_type_today_btn"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->iM:I

    const-string v2, "nd_rank_time_type_week_btn"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->iN:I

    const-string v2, "nd_rank_user_type_group"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->iO:I

    const-string v2, "nd_rank_user_type_group_landscape"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->iP:I

    const-string v2, "nd_reduce_goods"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->iQ:I

    const-string v2, "nd_server_tel"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->iR:I

    const-string v2, "nd_set_password_confirm"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->iS:I

    const-string v2, "nd_set_password_layout"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->iT:I

    const-string v2, "nd_set_password_new"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->iU:I

    const-string v2, "nd_set_password_old"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->iV:I

    const-string v2, "nd_tips"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->iW:I

    const-string v2, "nd_to_buy"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->iX:I

    const-string v2, "nd_tv_account"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->iY:I

    const-string v2, "nd_unbind_phone_number_bind"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->iZ:I

    const-string v2, "nd_unbind_phone_number_bind_edit_code"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->ja:I

    const-string v2, "nd_unbind_phone_number_bind_edit_phone_number"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->jb:I

    const-string v2, "nd_unbind_phone_number_gain"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->jc:I

    const-string v2, "nd_unbind_phone_number_gain_text"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->jd:I

    const-string v2, "nd_unbind_phone_number_layout"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->je:I

    const-string v2, "nd_unbind_phone_number_tips"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->jf:I

    const-string v2, "nd_version_size"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$e;->jg:I

    const-string v2, "nd3_account_bind"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->a:I

    const-string v2, "nd3_account_bind_bind"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->b:I

    const-string v2, "nd3_account_bind_register"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->c:I

    const-string v2, "nd3_account_email_item"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->d:I

    const-string v2, "nd3_account_login"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->e:I

    const-string v2, "nd3_account_login_item"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->f:I

    const-string v2, "nd3_account_login_land"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->g:I

    const-string v2, "nd3_account_login_other_item"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->h:I

    const-string v2, "nd3_account_login_portrait"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->i:I

    const-string v2, "nd3_account_oauth_bind"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->j:I

    const-string v2, "nd3_account_official"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->k:I

    const-string v2, "nd3_account_official_landscape"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->l:I

    const-string v2, "nd3_account_official_portrait"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->m:I

    const-string v2, "nd3_account_other_login"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->n:I

    const-string v2, "nd3_account_register"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->o:I

    const-string v2, "nd3_account_register_agreement"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->p:I

    const-string v2, "nd3_account_register_phone"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->q:I

    const-string v2, "nd3_account_register_quick"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->r:I

    const-string v2, "nd3_account_secret_find"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->s:I

    const-string v2, "nd3_account_secret_set"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->t:I

    const-string v2, "nd3_account_sina"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->u:I

    const-string v2, "nd3_achieve_detail"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->v:I

    const-string v2, "nd3_activity_action_template"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->w:I

    const-string v2, "nd3_activity_content_reg_template_1"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->x:I

    const-string v2, "nd3_activity_content_reg_template_2"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->y:I

    const-string v2, "nd3_activity_content_reg_template_2_ext"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->z:I

    const-string v2, "nd3_activity_content_reg_template_3"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->A:I

    const-string v2, "nd3_activity_content_reg_template_4"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->B:I

    const-string v2, "nd3_activity_detail"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->C:I

    const-string v2, "nd3_activity_detail_plus_image"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->D:I

    const-string v2, "nd3_activity_detail_plus_list"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->E:I

    const-string v2, "nd3_activity_detail_plus_list_ext"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->F:I

    const-string v2, "nd3_activity_head_reg"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->G:I

    const-string v2, "nd3_activity_no_action_template"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->H:I

    const-string v2, "nd3_app_feedback"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->I:I

    const-string v2, "nd3_app_item"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->J:I

    const-string v2, "nd3_app_property"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->K:I

    const-string v2, "nd3_banner_layout"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->L:I

    const-string v2, "nd3_blank_listview"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->M:I

    const-string v2, "nd3_bottom_bar"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->N:I

    const-string v2, "nd3_category_item"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->O:I

    const-string v2, "nd3_category_plus_image_item"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->P:I

    const-string v2, "nd3_control_center"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->Q:I

    const-string v2, "nd3_dispatch_search_friend"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->R:I

    const-string v2, "nd3_empty_listview"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->S:I

    const-string v2, "nd3_frame"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->T:I

    const-string v2, "nd3_friend_home"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->U:I

    const-string v2, "nd3_friend_remark_setting"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->V:I

    const-string v2, "nd3_friend_section"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->W:I

    const-string v2, "nd3_friend_section_list_item"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->X:I

    const-string v2, "nd3_friend_section_panel"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->Y:I

    const-string v2, "nd3_game_content"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->Z:I

    const-string v2, "nd3_game_main"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->aa:I

    const-string v2, "nd3_home"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->ab:I

    const-string v2, "nd3_home_land"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->ac:I

    const-string v2, "nd3_home_personal"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->ad:I

    const-string v2, "nd3_home_portrait"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->ae:I

    const-string v2, "nd3_invite_friend"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->af:I

    const-string v2, "nd3_invite_friend_choice"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->ag:I

    const-string v2, "nd3_invite_friend_item"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->ah:I

    const-string v2, "nd3_leaderboard_category"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->ai:I

    const-string v2, "nd3_leaderboard_list_item"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->aj:I

    const-string v2, "nd3_listview_footer"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->ak:I

    const-string v2, "nd3_listview_footer_ext"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->al:I

    const-string v2, "nd3_listview_template"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->am:I

    const-string v2, "nd3_listview_template_no_divider"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->an:I

    const-string v2, "nd3_mesg_main"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->ao:I

    const-string v2, "nd3_message_friendmsge_list"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->ap:I

    const-string v2, "nd3_message_main"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->aq:I

    const-string v2, "nd3_message_receive_item"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->ar:I

    const-string v2, "nd3_message_record_item"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->as:I

    const-string v2, "nd3_message_send"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->at:I

    const-string v2, "nd3_message_send_item"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->au:I

    const-string v2, "nd3_more_about"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->av:I

    const-string v2, "nd3_more_account"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->aw:I

    const-string v2, "nd3_more_bean_recharge"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->ax:I

    const-string v2, "nd3_more_consume_detail"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->ay:I

    const-string v2, "nd3_more_consumes"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->az:I

    const-string v2, "nd3_more_info"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->aA:I

    const-string v2, "nd3_more_info_edit_head_dialog"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->aB:I

    const-string v2, "nd3_more_more"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->aC:I

    const-string v2, "nd3_more_no_password"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->aD:I

    const-string v2, "nd3_more_password"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->aE:I

    const-string v2, "nd3_more_permission"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->aF:I

    const-string v2, "nd3_more_recharge_detail"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->aG:I

    const-string v2, "nd3_more_recharges"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->aH:I

    const-string v2, "nd3_more_records"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->aI:I

    const-string v2, "nd3_more_records_item"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->aJ:I

    const-string v2, "nd3_myfriend"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->aK:I

    const-string v2, "nd3_network_error"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->aL:I

    const-string v2, "nd3_normal_search"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->aM:I

    const-string v2, "nd3_pay_friend_item"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->aN:I

    const-string v2, "nd3_pay_pass"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->aO:I

    const-string v2, "nd3_pay_password_check"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->aP:I

    const-string v2, "nd3_pay_products_item"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->aQ:I

    const-string v2, "nd3_pay_select_friend"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->aR:I

    const-string v2, "nd3_pay_template"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->aS:I

    const-string v2, "nd3_person_info_detail"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->aT:I

    const-string v2, "nd3_personinfo"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->aU:I

    const-string v2, "nd3_progressbar"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->aV:I

    const-string v2, "nd3_recharge_record"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->aW:I

    const-string v2, "nd3_searchfriend_condition"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->aX:I

    const-string v2, "nd3_share_bind_account_item"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->aY:I

    const-string v2, "nd3_share_sina"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->aZ:I

    const-string v2, "nd3_share_unbind_account_item"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->ba:I

    const-string v2, "nd3_stranger_home"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->bb:I

    const-string v2, "nd3_sysmessage_detail_action"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->bc:I

    const-string v2, "nd3_sysmessage_detail_app"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->bd:I

    const-string v2, "nd3_sysmessage_detail_no_action"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->be:I

    const-string v2, "nd3_sysmessage_head_reg"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->bf:I

    const-string v2, "nd3_thirdplatform_item"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->bg:I

    const-string v2, "nd3_title_bar"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->bh:I

    const-string v2, "nd3_user_fangle"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->bi:I

    const-string v2, "nd3_user_fangle_ext"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->bj:I

    const-string v2, "nd3_user_item"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->bk:I

    const-string v2, "nd3_user_item_divider"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->bl:I

    const-string v2, "nd3_user_message"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->bm:I

    const-string v2, "nd3_user_message_switcher"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->bn:I

    const-string v2, "nd3_version_update"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->bo:I

    const-string v2, "nd3_write_message"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->bp:I

    const-string v2, "nd_account_list_item"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->bq:I

    const-string v2, "nd_account_manage"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->br:I

    const-string v2, "nd_bind_phone_lottery"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->bs:I

    const-string v2, "nd_bind_phone_number"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->bt:I

    const-string v2, "nd_bind_phone_number_result"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->bu:I

    const-string v2, "nd_bind_phone_number_tip"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->bv:I

    const-string v2, "nd_bind_phone_number_unactivity_tip"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->bw:I

    const-string v2, "nd_check_version"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->bx:I

    const-string v2, "nd_find_password"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->by:I

    const-string v2, "nd_goods_detail"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->bz:I

    const-string v2, "nd_goods_list"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->bA:I

    const-string v2, "nd_goods_list_item"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->bB:I

    const-string v2, "nd_leaderboard"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->bC:I

    const-string v2, "nd_leaderboard_list_header"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->bD:I

    const-string v2, "nd_leaderboard_switcher_landscape_1"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->bE:I

    const-string v2, "nd_leaderboard_switcher_portrait_1"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->bF:I

    const-string v2, "nd_login_director"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->bG:I

    const-string v2, "nd_set_password"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->bH:I

    const-string v2, "nd_unbind_phone_number"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$f;->bI:I

    const-string v2, "nd3_91acount_check"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->a:I

    const-string v2, "nd3_91dou_recharge"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->b:I

    const-string v2, "nd3_account_bind_account"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->c:I

    const-string v2, "nd3_account_bind_bind_already_bind"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->d:I

    const-string v2, "nd3_account_bind_bind_button_left"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->e:I

    const-string v2, "nd3_account_bind_bind_button_right"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->f:I

    const-string v2, "nd3_account_bind_bind_complete"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->g:I

    const-string v2, "nd3_account_bind_bind_content"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->h:I

    const-string v2, "nd3_account_bind_bind_content_format"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->i:I

    const-string v2, "nd3_account_bind_bind_hint_account"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->j:I

    const-string v2, "nd3_account_bind_bind_hint_password"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->k:I

    const-string v2, "nd3_account_bind_bind_skip"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->l:I

    const-string v2, "nd3_account_bind_bind_tip_account"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->m:I

    const-string v2, "nd3_account_bind_bind_tip_password"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->n:I

    const-string v2, "nd3_account_bind_bind_title"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->o:I

    const-string v2, "nd3_account_bind_button_left"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->p:I

    const-string v2, "nd3_account_bind_button_right"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->q:I

    const-string v2, "nd3_account_bind_register"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->r:I

    const-string v2, "nd3_account_bind_register_agreement"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->s:I

    const-string v2, "nd3_account_bind_register_already_bind"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->t:I

    const-string v2, "nd3_account_bind_register_button_left"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->u:I

    const-string v2, "nd3_account_bind_register_button_right"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->v:I

    const-string v2, "nd3_account_bind_register_hint_account"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->w:I

    const-string v2, "nd3_account_bind_register_hint_password"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->x:I

    const-string v2, "nd3_account_bind_register_tip_account"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->y:I

    const-string v2, "nd3_account_bind_register_tip_password"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->z:I

    const-string v2, "nd3_account_bind_register_title"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->A:I

    const-string v2, "nd3_account_bind_title"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->B:I

    const-string v2, "nd3_account_login_button_left"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->C:I

    const-string v2, "nd3_account_login_button_right"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->D:I

    const-string v2, "nd3_account_login_cancel"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->E:I

    const-string v2, "nd3_account_login_click_to_find"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->F:I

    const-string v2, "nd3_account_login_hint_account"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->G:I

    const-string v2, "nd3_account_login_hint_password"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->H:I

    const-string v2, "nd3_account_login_no_account"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->I:I

    const-string v2, "nd3_account_login_no_account_reg"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->J:I

    const-string v2, "nd3_account_login_tip_account"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->K:I

    const-string v2, "nd3_account_login_tip_auto_login"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->L:I

    const-string v2, "nd3_account_login_tip_forget_password"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->M:I

    const-string v2, "nd3_account_login_tip_other_login"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->N:I

    const-string v2, "nd3_account_login_tip_other_platform"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->O:I

    const-string v2, "nd3_account_login_tip_password"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->P:I

    const-string v2, "nd3_account_login_tip_use_other_login"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->Q:I

    const-string v2, "nd3_account_login_title"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->R:I

    const-string v2, "nd3_account_login_title_land"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->S:I

    const-string v2, "nd3_account_other_login_button_left"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->T:I

    const-string v2, "nd3_account_other_login_button_right"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->U:I

    const-string v2, "nd3_account_other_login_other_format"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->V:I

    const-string v2, "nd3_account_other_login_sina"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->W:I

    const-string v2, "nd3_account_other_login_title"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->X:I

    const-string v2, "nd3_account_register_agreement"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->Y:I

    const-string v2, "nd3_account_register_agreement_button_left"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->Z:I

    const-string v2, "nd3_account_register_agreement_button_right"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->aa:I

    const-string v2, "nd3_account_register_agreement_law"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->ab:I

    const-string v2, "nd3_account_register_agreement_title"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->ac:I

    const-string v2, "nd3_account_register_button_gain_code"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->ad:I

    const-string v2, "nd3_account_register_button_left"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->ae:I

    const-string v2, "nd3_account_register_button_right"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->af:I

    const-string v2, "nd3_account_register_button_wait_format"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->ag:I

    const-string v2, "nd3_account_register_hint_account"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->ah:I

    const-string v2, "nd3_account_register_hint_code"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->ai:I

    const-string v2, "nd3_account_register_hint_nickname"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->aj:I

    const-string v2, "nd3_account_register_hint_password"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->ak:I

    const-string v2, "nd3_account_register_hint_phone"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->al:I

    const-string v2, "nd3_account_register_initial_register"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->am:I

    const-string v2, "nd3_account_register_phone"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->an:I

    const-string v2, "nd3_account_register_phone_tip"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->ao:I

    const-string v2, "nd3_account_register_quick"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->ap:I

    const-string v2, "nd3_account_register_quick_tip"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->aq:I

    const-string v2, "nd3_account_register_tip_account"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->ar:I

    const-string v2, "nd3_account_register_tip_code"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->as:I

    const-string v2, "nd3_account_register_tip_nickname"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->at:I

    const-string v2, "nd3_account_register_tip_password"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->au:I

    const-string v2, "nd3_account_register_tip_phone"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->av:I

    const-string v2, "nd3_account_register_title"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->aw:I

    const-string v2, "nd3_account_sina_button_left"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->ax:I

    const-string v2, "nd3_account_sina_button_right"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->ay:I

    const-string v2, "nd3_account_sina_hint_account"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->az:I

    const-string v2, "nd3_account_sina_hint_password"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->aA:I

    const-string v2, "nd3_account_sina_tip_account"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->aB:I

    const-string v2, "nd3_account_sina_tip_password"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->aC:I

    const-string v2, "nd3_account_sina_title"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->aD:I

    const-string v2, "nd3_account_sina_title_format"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->aE:I

    const-string v2, "nd3_achieve_rank"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->aF:I

    const-string v2, "nd3_achievement_title"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->aG:I

    const-string v2, "nd3_ack_app_fail"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->aH:I

    const-string v2, "nd3_activity_action_btn_txt_1"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->aI:I

    const-string v2, "nd3_activity_action_btn_txt_2"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->aJ:I

    const-string v2, "nd3_activity_dispose"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->aK:I

    const-string v2, "nd3_add_friend_default_request_1"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->aL:I

    const-string v2, "nd3_add_friend_default_request_2"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->aM:I

    const-string v2, "nd3_add_friend_default_request_3"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->aN:I

    const-string v2, "nd3_add_friend_default_request_4"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->aO:I

    const-string v2, "nd3_add_friend_default_request_5"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->aP:I

    const-string v2, "nd3_add_friend_default_request_6"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->aQ:I

    const-string v2, "nd3_add_success"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->aR:I

    const-string v2, "nd3_addfriend_hint"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->aS:I

    const-string v2, "nd3_advance_search_friend_title"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->aT:I

    const-string v2, "nd3_age"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->aU:I

    const-string v2, "nd3_age_unit"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->aV:I

    const-string v2, "nd3_agree_friend_request"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->aW:I

    const-string v2, "nd3_apksize_tip"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->aX:I

    const-string v2, "nd3_app_download_confirm"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->aY:I

    const-string v2, "nd3_app_download_progress_1"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->aZ:I

    const-string v2, "nd3_app_download_progress_2"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->ba:I

    const-string v2, "nd3_app_download_progress_3"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->bb:I

    const-string v2, "nd3_app_download_title_tip"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->bc:I

    const-string v2, "nd3_app_download_too_big_tip"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->bd:I

    const-string v2, "nd3_app_download_too_big_tip_1"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->be:I

    const-string v2, "nd3_app_feedback_input_hide"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->bf:I

    const-string v2, "nd3_app_feedback_input_tip"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->bg:I

    const-string v2, "nd3_app_feedback_service_app"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->bh:I

    const-string v2, "nd3_app_feedback_service_app_1"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->bi:I

    const-string v2, "nd3_app_feedback_service_phone"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->bj:I

    const-string v2, "nd3_app_feedback_sub_type_1"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->bk:I

    const-string v2, "nd3_app_feedback_sub_type_2"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->bl:I

    const-string v2, "nd3_app_feedback_success_tip"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->bm:I

    const-string v2, "nd3_app_feedback_title"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->bn:I

    const-string v2, "nd3_app_name"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->bo:I

    const-string v2, "nd3_auto_login_tip"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->bp:I

    const-string v2, "nd3_balance_not_enough_recharge"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->bq:I

    const-string v2, "nd3_balance_not_enough_recharge_title"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->br:I

    const-string v2, "nd3_banner_title_format"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->bs:I

    const-string v2, "nd3_bean91"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->bt:I

    const-string v2, "nd3_bean91_unit"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->bu:I

    const-string v2, "nd3_beyond_pay_max_count"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->bv:I

    const-string v2, "nd3_beyond_pay_max_money"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->bw:I

    const-string v2, "nd3_beyond_pay_max_stock"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->bx:I

    const-string v2, "nd3_bind_account_timeout_tip"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->by:I

    const-string v2, "nd3_bind_third_account_tip"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->bz:I

    const-string v2, "nd3_bizarre_friend"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->bA:I

    const-string v2, "nd3_blance_not_enough"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->bB:I

    const-string v2, "nd3_blance_not_enough_desc"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->bC:I

    const-string v2, "nd3_blance_not_enough_desc_1"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->bD:I

    const-string v2, "nd3_call"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->bE:I

    const-string v2, "nd3_call_phone"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->bF:I

    const-string v2, "nd3_cancel"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->bG:I

    const-string v2, "nd3_cancel_friend_request"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->bH:I

    const-string v2, "nd3_cancel_share_photo"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->bI:I

    const-string v2, "nd3_category_friend"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->bJ:I

    const-string v2, "nd3_category_game"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->bK:I

    const-string v2, "nd3_category_home"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->bL:I

    const-string v2, "nd3_category_message"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->bM:I

    const-string v2, "nd3_category_more"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->bN:I

    const-string v2, "nd3_change_account_tis"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->bO:I

    const-string v2, "nd3_change_account_tis_no_exit"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->bP:I

    const-string v2, "nd3_check_remark"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->bQ:I

    const-string v2, "nd3_company"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->bR:I

    const-string v2, "nd3_company_title"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->bS:I

    const-string v2, "nd3_complete"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->bT:I

    const-string v2, "nd3_confim_pay"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->bU:I

    const-string v2, "nd3_confrim_pay"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->bV:I

    const-string v2, "nd3_curren_account"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->bW:I

    const-string v2, "nd3_customer_service"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->bX:I

    const-string v2, "nd3_date"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->bY:I

    const-string v2, "nd3_default_my_emotion"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->bZ:I

    const-string v2, "nd3_delete"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->ca:I

    const-string v2, "nd3_delete_friend"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->cb:I

    const-string v2, "nd3_delete_friend_tips"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->cc:I

    const-string v2, "nd3_down_lastversion"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->cd:I

    const-string v2, "nd3_downapp_failure"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->ce:I

    const-string v2, "nd3_downapp_finish_instant"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->cf:I

    const-string v2, "nd3_downapp_install_confirm_title"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->cg:I

    const-string v2, "nd3_edit_mood"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->ch:I

    const-string v2, "nd3_edit_remark"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->ci:I

    const-string v2, "nd3_edit_remark_hint"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->cj:I

    const-string v2, "nd3_error_code_10000"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->ck:I

    const-string v2, "nd3_error_code_5000"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->cl:I

    const-string v2, "nd3_error_newpsw_empty"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->cm:I

    const-string v2, "nd3_error_newpsw_invalid"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->cn:I

    const-string v2, "nd3_error_no_password_code_5000"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->co:I

    const-string v2, "nd3_error_no_password_newpsw_invalid"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->cp:I

    const-string v2, "nd3_error_no_password_no_equal"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->cq:I

    const-string v2, "nd3_error_oldpsw_empty"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->cr:I

    const-string v2, "nd3_error_oldpsw_invalid"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->cs:I

    const-string v2, "nd3_error_send_message_content_invalid"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->ct:I

    const-string v2, "nd3_feedback_tel_tip"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->cu:I

    const-string v2, "nd3_friend_count"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->cv:I

    const-string v2, "nd3_friend_main_title"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->cw:I

    const-string v2, "nd3_friend_message_receiver_title"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->cx:I

    const-string v2, "nd3_friend_resources"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->cy:I

    const-string v2, "nd3_friend_resources_ext"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->cz:I

    const-string v2, "nd3_game"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->cA:I

    const-string v2, "nd3_importance_tis"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->cB:I

    const-string v2, "nd3_important_update"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->cC:I

    const-string v2, "nd3_instant"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->cD:I

    const-string v2, "nd3_invite91_desc"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->cE:I

    const-string v2, "nd3_invite_91friend"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->cF:I

    const-string v2, "nd3_invite_all"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->cG:I

    const-string v2, "nd3_invite_flag"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->cH:I

    const-string v2, "nd3_invite_flag_1"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->cI:I

    const-string v2, "nd3_invite_friend"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->cJ:I

    const-string v2, "nd3_invite_friend_choice_beyond_max_tip"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->cK:I

    const-string v2, "nd3_invite_friend_choice_tip"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->cL:I

    const-string v2, "nd3_invite_null_tisp"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->cM:I

    const-string v2, "nd3_invite_sina_microblog_friend_title"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->cN:I

    const-string v2, "nd3_invite_sina_tisp"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->cO:I

    const-string v2, "nd3_invite_sinafriend"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->cP:I

    const-string v2, "nd3_invite_success"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->cQ:I

    const-string v2, "nd3_invite_thirdplatform_friend"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->cR:I

    const-string v2, "nd3_is_update_now"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->cS:I

    const-string v2, "nd3_list_item_loading"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->cT:I

    const-string v2, "nd3_list_view_more_record"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->cU:I

    const-string v2, "nd3_loaddown"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->cV:I

    const-string v2, "nd3_local_album"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->cW:I

    const-string v2, "nd3_may_know_person"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->cX:I

    const-string v2, "nd3_message_refresh"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->cY:I

    const-string v2, "nd3_month"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->cZ:I

    const-string v2, "nd3_mood_hint"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->da:I

    const-string v2, "nd3_more_account_account_format"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->db:I

    const-string v2, "nd3_more_account_autologin"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->dc:I

    const-string v2, "nd3_more_account_bind"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->dd:I

    const-string v2, "nd3_more_account_bind_hasactivity_label"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->de:I

    const-string v2, "nd3_more_account_bind_label"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->df:I

    const-string v2, "nd3_more_account_button_left"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->dg:I

    const-string v2, "nd3_more_account_button_right"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->dh:I

    const-string v2, "nd3_more_account_cannot_bind"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->di:I

    const-string v2, "nd3_more_account_has_bind"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->dj:I

    const-string v2, "nd3_more_account_no_set_password"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->dk:I

    const-string v2, "nd3_more_account_not_bind"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->dl:I

    const-string v2, "nd3_more_account_other_login"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->dm:I

    const-string v2, "nd3_more_account_other_login_account_format"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->dn:I

    const-string v2, "nd3_more_account_other_login_account_format_2"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->do:I

    const-string v2, "nd3_more_account_other_login_format"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->dp:I

    const-string v2, "nd3_more_account_password"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->dq:I

    const-string v2, "nd3_more_account_secret_set"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->dr:I

    const-string v2, "nd3_more_account_set_other_login"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->ds:I

    const-string v2, "nd3_more_account_set_other_login_binded"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->dt:I

    const-string v2, "nd3_more_account_set_other_login_sina"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->du:I

    const-string v2, "nd3_more_account_set_other_login_success"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->dv:I

    const-string v2, "nd3_more_account_title"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->dw:I

    const-string v2, "nd3_more_bind_check_button_right"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->dx:I

    const-string v2, "nd3_more_bind_other_platform_fail"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->dy:I

    const-string v2, "nd3_more_consume_detail_button_left"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->dz:I

    const-string v2, "nd3_more_consume_detail_button_right"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->dA:I

    const-string v2, "nd3_more_consume_detail_item_app"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->dB:I

    const-string v2, "nd3_more_consume_detail_item_date"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->dC:I

    const-string v2, "nd3_more_consume_detail_item_money"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->dD:I

    const-string v2, "nd3_more_consume_detail_item_number"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->dE:I

    const-string v2, "nd3_more_consume_detail_item_order"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->dF:I

    const-string v2, "nd3_more_consume_detail_item_product"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->dG:I

    const-string v2, "nd3_more_consume_detail_title"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->dH:I

    const-string v2, "nd3_more_consumes_button_left"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->dI:I

    const-string v2, "nd3_more_consumes_button_right"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->dJ:I

    const-string v2, "nd3_more_consumes_item_number"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->dK:I

    const-string v2, "nd3_more_consumes_item_title"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->dL:I

    const-string v2, "nd3_more_consumes_more"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->dM:I

    const-string v2, "nd3_more_consumes_no_consume_tip"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->dN:I

    const-string v2, "nd3_more_consumes_title"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->dO:I

    const-string v2, "nd3_more_info_add_portrait"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->dP:I

    const-string v2, "nd3_more_info_button_left"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->dQ:I

    const-string v2, "nd3_more_info_button_right"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->dR:I

    const-string v2, "nd3_more_info_edit_portrait"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->dS:I

    const-string v2, "nd3_more_info_error_code_12000"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->dT:I

    const-string v2, "nd3_more_info_error_code_8000"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->dU:I

    const-string v2, "nd3_more_info_error_nickname_empty"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->dV:I

    const-string v2, "nd3_more_info_error_realname_empty"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->dW:I

    const-string v2, "nd3_more_info_error_realname_invalid"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->dX:I

    const-string v2, "nd3_more_info_hint_address"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->dY:I

    const-string v2, "nd3_more_info_hint_date"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->dZ:I

    const-string v2, "nd3_more_info_hint_nickname"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->ea:I

    const-string v2, "nd3_more_info_hint_real_name"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->eb:I

    const-string v2, "nd3_more_info_hint_sex"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->ec:I

    const-string v2, "nd3_more_info_photo_add"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->ed:I

    const-string v2, "nd3_more_info_portrait_add"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->ee:I

    const-string v2, "nd3_more_info_portrait_cancel"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->ef:I

    const-string v2, "nd3_more_info_portrait_capture"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->eg:I

    const-string v2, "nd3_more_info_portrait_edit"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->eh:I

    const-string v2, "nd3_more_info_portrait_gallery"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->ei:I

    const-string v2, "nd3_more_info_sex_female"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->ej:I

    const-string v2, "nd3_more_info_sex_male"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->ek:I

    const-string v2, "nd3_more_info_sex_secret"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->el:I

    const-string v2, "nd3_more_info_tip_address"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->em:I

    const-string v2, "nd3_more_info_tip_date"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->en:I

    const-string v2, "nd3_more_info_tip_nickname"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->eo:I

    const-string v2, "nd3_more_info_tip_real_name"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->ep:I

    const-string v2, "nd3_more_info_tip_sex"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->eq:I

    const-string v2, "nd3_more_info_title"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->er:I

    const-string v2, "nd3_more_more_about"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->es:I

    const-string v2, "nd3_more_more_account"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->et:I

    const-string v2, "nd3_more_more_info"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->eu:I

    const-string v2, "nd3_more_more_logout"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->ev:I

    const-string v2, "nd3_more_more_permission"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->ew:I

    const-string v2, "nd3_more_more_recharge"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->ex:I

    const-string v2, "nd3_more_more_records"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->ey:I

    const-string v2, "nd3_more_more_title"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->ez:I

    const-string v2, "nd3_more_no_password_password"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->eA:I

    const-string v2, "nd3_more_no_password_password_again"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->eB:I

    const-string v2, "nd3_more_no_password_password_content"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->eC:I

    const-string v2, "nd3_more_no_password_title"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->eD:I

    const-string v2, "nd3_more_password_button_left"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->eE:I

    const-string v2, "nd3_more_password_button_right"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->eF:I

    const-string v2, "nd3_more_password_hint_new"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->eG:I

    const-string v2, "nd3_more_password_hint_old"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->eH:I

    const-string v2, "nd3_more_password_tip_new"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->eI:I

    const-string v2, "nd3_more_password_tip_old"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->eJ:I

    const-string v2, "nd3_more_password_title"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->eK:I

    const-string v2, "nd3_more_permission_button_left"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->eL:I

    const-string v2, "nd3_more_permission_button_right"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->eM:I

    const-string v2, "nd3_more_permission_check"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->eN:I

    const-string v2, "nd3_more_permission_no"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->eO:I

    const-string v2, "nd3_more_permission_title"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->eP:I

    const-string v2, "nd3_more_permission_yes"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->eQ:I

    const-string v2, "nd3_more_recharge_detail_button_left"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->eR:I

    const-string v2, "nd3_more_recharge_detail_button_right"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->eS:I

    const-string v2, "nd3_more_recharge_detail_item_date"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->eT:I

    const-string v2, "nd3_more_recharge_detail_item_money"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->eU:I

    const-string v2, "nd3_more_recharge_detail_item_order"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->eV:I

    const-string v2, "nd3_more_recharge_detail_item_type"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->eW:I

    const-string v2, "nd3_more_recharge_detail_title"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->eX:I

    const-string v2, "nd3_more_recharges_button_left"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->eY:I

    const-string v2, "nd3_more_recharges_button_right"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->eZ:I

    const-string v2, "nd3_more_recharges_item_number"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->fa:I

    const-string v2, "nd3_more_recharges_item_title"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->fb:I

    const-string v2, "nd3_more_recharges_item_unit"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->fc:I

    const-string v2, "nd3_more_recharges_month_cancel"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->fd:I

    const-string v2, "nd3_more_recharges_month_complete"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->fe:I

    const-string v2, "nd3_more_recharges_month_records_view_by_format"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->ff:I

    const-string v2, "nd3_more_recharges_more"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->fg:I

    const-string v2, "nd3_more_recharges_no_recharge_tip"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->fh:I

    const-string v2, "nd3_more_recharges_title"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->fi:I

    const-string v2, "nd3_more_records_button_left"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->fj:I

    const-string v2, "nd3_more_records_button_right"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->fk:I

    const-string v2, "nd3_more_records_consumes"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->fl:I

    const-string v2, "nd3_more_records_recharges"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->fm:I

    const-string v2, "nd3_more_records_title"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->fn:I

    const-string v2, "nd3_my_friend_title"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->fo:I

    const-string v2, "nd3_my_message_send"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->fp:I

    const-string v2, "nd3_my_message_title"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->fq:I

    const-string v2, "nd3_my_msge"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->fr:I

    const-string v2, "nd3_neet_91beans"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->fs:I

    const-string v2, "nd3_network_error_content"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->ft:I

    const-string v2, "nd3_network_error_title"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->fu:I

    const-string v2, "nd3_new_message"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->fv:I

    const-string v2, "nd3_new_message_tip"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->fw:I

    const-string v2, "nd3_nickname_null"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->fx:I

    const-string v2, "nd3_no_achievement_tip"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->fy:I

    const-string v2, "nd3_no_constrait_tip"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->fz:I

    const-string v2, "nd3_no_fangle_tip"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->fA:I

    const-string v2, "nd3_no_friend_tip"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->fB:I

    const-string v2, "nd3_no_invite_91_friend"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->fC:I

    const-string v2, "nd3_no_invite_sina_friend"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->fD:I

    const-string v2, "nd3_no_leaderboard_tip"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->fE:I

    const-string v2, "nd3_no_may_known_person_tip"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->fF:I

    const-string v2, "nd3_no_message_tip"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->fG:I

    const-string v2, "nd3_no_my_friend"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->fH:I

    const-string v2, "nd3_no_my_message_tip"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->fI:I

    const-string v2, "nd3_no_myfriend_tip"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->fJ:I

    const-string v2, "nd3_no_rank_category_tip"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->fK:I

    const-string v2, "nd3_no_rank_current"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->fL:I

    const-string v2, "nd3_no_sys_message_tip"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->fM:I

    const-string v2, "nd3_no_ta_app_tip"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->fN:I

    const-string v2, "nd3_no_ta_friend_tip"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->fO:I

    const-string v2, "nd3_no_user_info_tip"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->fP:I

    const-string v2, "nd3_no_who_play_tip"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->fQ:I

    const-string v2, "nd3_normal_search_friend_btn_txt"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->fR:I

    const-string v2, "nd3_normal_search_friend_title"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->fS:I

    const-string v2, "nd3_normal_search_friend_title_1"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->fT:I

    const-string v2, "nd3_normal_search_friend_title_2"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->fU:I

    const-string v2, "nd3_notify"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->fV:I

    const-string v2, "nd3_null_account"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->fW:I

    const-string v2, "nd3_null_msg"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->fX:I

    const-string v2, "nd3_null_password"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->fY:I

    const-string v2, "nd3_other_rank_content_fmt"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->fZ:I

    const-string v2, "nd3_passw_desc"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->ga:I

    const-string v2, "nd3_password_check"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->gb:I

    const-string v2, "nd3_password_null"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->gc:I

    const-string v2, "nd3_pay_after_recharged"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->gd:I

    const-string v2, "nd3_pay_button_back"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->ge:I

    const-string v2, "nd3_pay_button_bean_recharge"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->gf:I

    const-string v2, "nd3_pay_button_buy"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->gg:I

    const-string v2, "nd3_pay_button_next"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->gh:I

    const-string v2, "nd3_pay_button_recharge"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->gi:I

    const-string v2, "nd3_pay_button_send"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->gj:I

    const-string v2, "nd3_pay_button_view_consumes"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->gk:I

    const-string v2, "nd3_pay_cancel"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->gl:I

    const-string v2, "nd3_pay_cannot_pay_by_friend"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->gm:I

    const-string v2, "nd3_pay_check_check_password_fail"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->gn:I

    const-string v2, "nd3_pay_check_set_password"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->go:I

    const-string v2, "nd3_pay_check_set_password_empty"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->gp:I

    const-string v2, "nd3_pay_fail"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->gq:I

    const-string v2, "nd3_pay_failure_tips"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->gr:I

    const-string v2, "nd3_pay_friend_empty"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->gs:I

    const-string v2, "nd3_pay_hint_pay_for_another"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->gt:I

    const-string v2, "nd3_pay_hint_pay_for_another_fail"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->gu:I

    const-string v2, "nd3_pay_hint_pay_for_another_success"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->gv:I

    const-string v2, "nd3_pay_label_app"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->gw:I

    const-string v2, "nd3_pay_label_auto_buy"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->gx:I

    const-string v2, "nd3_pay_label_buy_success"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->gy:I

    const-string v2, "nd3_pay_label_check_pay_no_password"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->gz:I

    const-string v2, "nd3_pay_label_check_pay_password"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->gA:I

    const-string v2, "nd3_pay_label_count"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->gB:I

    const-string v2, "nd3_pay_label_current_balance"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->gC:I

    const-string v2, "nd3_pay_label_money"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->gD:I

    const-string v2, "nd3_pay_label_pay_by_friend"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->gE:I

    const-string v2, "nd3_pay_label_pay_content"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->gF:I

    const-string v2, "nd3_pay_label_pay_title"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->gG:I

    const-string v2, "nd3_pay_label_product"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->gH:I

    const-string v2, "nd3_pay_label_service_format"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->gI:I

    const-string v2, "nd3_pay_label_service_format_2"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->gJ:I

    const-string v2, "nd3_pay_label_view_consumes"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->gK:I

    const-string v2, "nd3_pay_pass_exit"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->gL:I

    const-string v2, "nd3_pay_password_null"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->gM:I

    const-string v2, "nd3_pay_pay_by_friend"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->gN:I

    const-string v2, "nd3_pay_product_count"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->gO:I

    const-string v2, "nd3_pay_recharge"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->gP:I

    const-string v2, "nd3_pay_reguid_tips"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->gQ:I

    const-string v2, "nd3_pay_success"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->gR:I

    const-string v2, "nd3_pay_timeout_tips"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->gS:I

    const-string v2, "nd3_pay_title_balance_not_enough"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->gT:I

    const-string v2, "nd3_pay_title_buy"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->gU:I

    const-string v2, "nd3_pay_title_buy_success"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->gV:I

    const-string v2, "nd3_pay_title_pay_for_another"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->gW:I

    const-string v2, "nd3_pay_value_current_balance_91_format"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->gX:I

    const-string v2, "nd3_pay_value_current_balance_format"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->gY:I

    const-string v2, "nd3_pay_value_current_balance_virtual_format"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->gZ:I

    const-string v2, "nd3_pay_value_money_format"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->ha:I

    const-string v2, "nd3_person_info"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->hb:I

    const-string v2, "nd3_phone_code_empty"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->hc:I

    const-string v2, "nd3_phone_code_error"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->hd:I

    const-string v2, "nd3_phone_code_timeout"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->he:I

    const-string v2, "nd3_phone_phone_empty"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->hf:I

    const-string v2, "nd3_phone_phone_invalid"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->hg:I

    const-string v2, "nd3_phone_pwd_empty"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->hh:I

    const-string v2, "nd3_phone_pwd_invalid"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->hi:I

    const-string v2, "nd3_product_name"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->hj:I

    const-string v2, "nd3_products_list"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->hk:I

    const-string v2, "nd3_pz"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->hl:I

    const-string v2, "nd3_rank_category_title"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->hm:I

    const-string v2, "nd3_rank_share_btn_txt"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->hn:I

    const-string v2, "nd3_ranking"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->ho:I

    const-string v2, "nd3_receiver"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->hp:I

    const-string v2, "nd3_receiver_null"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->hq:I

    const-string v2, "nd3_refuse"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->hr:I

    const-string v2, "nd3_refuse_friend_request"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->hs:I

    const-string v2, "nd3_remarks"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->ht:I

    const-string v2, "nd3_request_serial_fail"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->hu:I

    const-string v2, "nd3_restart"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->hv:I

    const-string v2, "nd3_return_str"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->hw:I

    const-string v2, "nd3_sdk_error_account_has_exist"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->hx:I

    const-string v2, "nd3_sdk_error_account_invalid"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->hy:I

    const-string v2, "nd3_sdk_error_account_not_exist"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->hz:I

    const-string v2, "nd3_sdk_error_account_password_error"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->hA:I

    const-string v2, "nd3_sdk_error_achive_unexist"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->hB:I

    const-string v2, "nd3_sdk_error_act_unpermisstion_access"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->hC:I

    const-string v2, "nd3_sdk_error_activity_type_invalid"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->hD:I

    const-string v2, "nd3_sdk_error_already_be_your_friend"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->hE:I

    const-string v2, "nd3_sdk_error_app_id_invalid"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->hF:I

    const-string v2, "nd3_sdk_error_app_key_invalid"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->hG:I

    const-string v2, "nd3_sdk_error_app_not_exist"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->hH:I

    const-string v2, "nd3_sdk_error_app_unpass_checked"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->hI:I

    const-string v2, "nd3_sdk_error_arrive_max_friend_num"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->hJ:I

    const-string v2, "nd3_sdk_error_balance_not_enough"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->hK:I

    const-string v2, "nd3_sdk_error_binded_91account"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->hL:I

    const-string v2, "nd3_sdk_error_binded_other_91account"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->hM:I

    const-string v2, "nd3_sdk_error_binded_thirdplatform"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->hN:I

    const-string v2, "nd3_sdk_error_can_not_send_msg_to_self"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->hO:I

    const-string v2, "nd3_sdk_error_cancel"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->hP:I

    const-string v2, "nd3_sdk_error_cancel_pay"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->hQ:I

    const-string v2, "nd3_sdk_error_client_app_id_invalid"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->hR:I

    const-string v2, "nd3_sdk_error_client_tag"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->hS:I

    const-string v2, "nd3_sdk_error_content_length_invalid"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->hT:I

    const-string v2, "nd3_sdk_error_custom_tag_arg_not_enough"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->hU:I

    const-string v2, "nd3_sdk_error_custom_tag_arg_not_invalid"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->hV:I

    const-string v2, "nd3_sdk_error_emotion_content_invalid"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->hW:I

    const-string v2, "nd3_sdk_error_emotion_length_too_long"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->hX:I

    const-string v2, "nd3_sdk_error_feedback_id_invalid"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->hY:I

    const-string v2, "nd3_sdk_error_friend_not_exist"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->hZ:I

    const-string v2, "nd3_sdk_error_has_not_login"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->ia:I

    const-string v2, "nd3_sdk_error_has_set_phone_num"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->ib:I

    const-string v2, "nd3_sdk_error_icon_not_changed"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->ic:I

    const-string v2, "nd3_sdk_error_icon_unexist"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->id:I

    const-string v2, "nd3_sdk_error_ignore_upload"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->ie:I

    const-string v2, "nd3_sdk_error_image_data_invalid"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->if:I

    const-string v2, "nd3_sdk_error_image_size_too_large"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->ig:I

    const-string v2, "nd3_sdk_error_invalid_command_tag"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->ih:I

    const-string v2, "nd3_sdk_error_invalid_content_tag"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->ii:I

    const-string v2, "nd3_sdk_error_leadbroad_list_unexist"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->ij:I

    const-string v2, "nd3_sdk_error_leadbroad_unexist"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->ik:I

    const-string v2, "nd3_sdk_error_login_fail"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->il:I

    const-string v2, "nd3_sdk_error_miss_third_login_info"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->im:I

    const-string v2, "nd3_sdk_error_mode_param_invalid"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->in:I

    const-string v2, "nd3_sdk_error_modeid_invalid"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->io:I

    const-string v2, "nd3_sdk_error_msg_not_exist"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->ip:I

    const-string v2, "nd3_sdk_error_network_error"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->iq:I

    const-string v2, "nd3_sdk_error_network_fail"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->ir:I

    const-string v2, "nd3_sdk_error_new_password_invalid"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->is:I

    const-string v2, "nd3_sdk_error_nickname_invalid"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->it:I

    const-string v2, "nd3_sdk_error_no_custom_app_icon"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->iu:I

    const-string v2, "nd3_sdk_error_no_custom_photo"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->iv:I

    const-string v2, "nd3_sdk_error_no_phone_num"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->iw:I

    const-string v2, "nd3_sdk_error_no_sim"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->ix:I

    const-string v2, "nd3_sdk_error_nonfriend"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->iy:I

    const-string v2, "nd3_sdk_error_nonfriend_thirdaccount"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->iz:I

    const-string v2, "nd3_sdk_error_not_allowed_to_be_added"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->iA:I

    const-string v2, "nd3_sdk_error_not_allowed_to_send_msg"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->iB:I

    const-string v2, "nd3_sdk_error_not_found"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->iC:I

    const-string v2, "nd3_sdk_error_note_length_invalid"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->iD:I

    const-string v2, "nd3_sdk_error_old_password_error"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->iE:I

    const-string v2, "nd3_sdk_error_old_password_invalid"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->iF:I

    const-string v2, "nd3_sdk_error_order_serial_duplicate"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->iG:I

    const-string v2, "nd3_sdk_error_package_invalid"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->iH:I

    const-string v2, "nd3_sdk_error_page_required_not_valid"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->iI:I

    const-string v2, "nd3_sdk_error_param"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->iJ:I

    const-string v2, "nd3_sdk_error_param_invalid"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->iK:I

    const-string v2, "nd3_sdk_error_password_invalid"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->iL:I

    const-string v2, "nd3_sdk_error_pay_account_not_actived"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->iM:I

    const-string v2, "nd3_sdk_error_pay_failure"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->iN:I

    const-string v2, "nd3_sdk_error_pay_password_error"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->iO:I

    const-string v2, "nd3_sdk_error_pay_password_not_set"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->iP:I

    const-string v2, "nd3_sdk_error_pay_password_not_verify"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->iQ:I

    const-string v2, "nd3_sdk_error_permission_not_enough"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->iR:I

    const-string v2, "nd3_sdk_error_phone_has_registed"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->iS:I

    const-string v2, "nd3_sdk_error_phone_send_repeated"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->iT:I

    const-string v2, "nd3_sdk_error_phone_verify_code_invalid"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->iU:I

    const-string v2, "nd3_sdk_error_photo_not_changed"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->iV:I

    const-string v2, "nd3_sdk_error_recharge_card_number_error"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->iW:I

    const-string v2, "nd3_sdk_error_recharge_card_password_error"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->iX:I

    const-string v2, "nd3_sdk_error_recharge_card_type_not_support"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->iY:I

    const-string v2, "nd3_sdk_error_recharge_money_invalid"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->iZ:I

    const-string v2, "nd3_sdk_error_regist_fail"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->ja:I

    const-string v2, "nd3_sdk_error_repeat_share_content"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->jb:I

    const-string v2, "nd3_sdk_error_server_return_error"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->jc:I

    const-string v2, "nd3_sdk_error_sessionid_invalid"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->jd:I

    const-string v2, "nd3_sdk_error_sms_recharge_account_invalid"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->je:I

    const-string v2, "nd3_sdk_error_substitue_uncurrent_user"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->jf:I

    const-string v2, "nd3_sdk_error_third_bind_91acc_exception"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->jg:I

    const-string v2, "nd3_sdk_error_too_much_account_logined"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->jh:I

    const-string v2, "nd3_sdk_error_too_much_account_registed"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->ji:I

    const-string v2, "nd3_sdk_error_true_name_invalid"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->jj:I

    const-string v2, "nd3_sdk_error_unabled_check_thirdacc_password"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->jk:I

    const-string v2, "nd3_sdk_error_unbind_thirdaccount"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->jl:I

    const-string v2, "nd3_sdk_error_unexist_order"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->jm:I

    const-string v2, "nd3_sdk_error_unknown"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->jn:I

    const-string v2, "nd3_sdk_error_unplay_friend"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->jo:I

    const-string v2, "nd3_sdk_error_user_not_exist"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->jp:I

    const-string v2, "nd3_sdk_error_verify_account_fail"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->jq:I

    const-string v2, "nd3_sdkcompany"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->jr:I

    const-string v2, "nd3_sdkname"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->js:I

    const-string v2, "nd3_search_friend_no_data_txt"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->jt:I

    const-string v2, "nd3_search_input_tips"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->ju:I

    const-string v2, "nd3_searchfriend_item2_str"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->jv:I

    const-string v2, "nd3_searchfriend_item3_str"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->jw:I

    const-string v2, "nd3_secret"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->jx:I

    const-string v2, "nd3_self_rank_content_fmt"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->jy:I

    const-string v2, "nd3_send"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->jz:I

    const-string v2, "nd3_send_message_sendhint_str"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->jA:I

    const-string v2, "nd3_send_sms_failure"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->jB:I

    const-string v2, "nd3_send_sms_success"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->jC:I

    const-string v2, "nd3_send_success"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->jD:I

    const-string v2, "nd3_sendmsge"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->jE:I

    const-string v2, "nd3_sendmsge_tisp"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->jF:I

    const-string v2, "nd3_set_91beans_passw"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->jG:I

    const-string v2, "nd3_share_failure"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->jH:I

    const-string v2, "nd3_share_item_name"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->jI:I

    const-string v2, "nd3_share_my_achieve"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->jJ:I

    const-string v2, "nd3_share_success"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->jK:I

    const-string v2, "nd3_share_to"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->jL:I

    const-string v2, "nd3_shopping"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->jM:I

    const-string v2, "nd3_show_bbs_detail"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->jN:I

    const-string v2, "nd3_show_consum_records"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->jO:I

    const-string v2, "nd3_show_player"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->jP:I

    const-string v2, "nd3_sina"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->jQ:I

    const-string v2, "nd3_sina_account"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->jR:I

    const-string v2, "nd3_sina_password"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->jS:I

    const-string v2, "nd3_stranger_add_friend"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->jT:I

    const-string v2, "nd3_submit"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->jU:I

    const-string v2, "nd3_submit_success"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->jV:I

    const-string v2, "nd3_success_shopping"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->jW:I

    const-string v2, "nd3_sys_message_title"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->jX:I

    const-string v2, "nd3_ta_activity_title"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->jY:I

    const-string v2, "nd3_ta_activity_title_1"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->jZ:I

    const-string v2, "nd3_ta_app_title"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->ka:I

    const-string v2, "nd3_ta_app_title_1"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->kb:I

    const-string v2, "nd3_ta_friend_title"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->kc:I

    const-string v2, "nd3_ta_friend_title_1"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->kd:I

    const-string v2, "nd3_tips"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->ke:I

    const-string v2, "nd3_topbar_ret"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->kf:I

    const-string v2, "nd3_unbind_account_tip"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->kg:I

    const-string v2, "nd3_unmounted_sdcard"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->kh:I

    const-string v2, "nd3_update_now"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->ki:I

    const-string v2, "nd3_update_tip"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->kj:I

    const-string v2, "nd3_use_other_account"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->kk:I

    const-string v2, "nd3_version"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->kl:I

    const-string v2, "nd3_version_download_progress"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->km:I

    const-string v2, "nd3_version_download_progress_2"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->kn:I

    const-string v2, "nd3_version_force_91helper"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->ko:I

    const-string v2, "nd3_version_force_91helper_2"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->kp:I

    const-string v2, "nd3_version_force_normal"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->kq:I

    const-string v2, "nd3_version_force_normal_2"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->kr:I

    const-string v2, "nd3_version_intro_91helper"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->ks:I

    const-string v2, "nd3_version_intro_91helper_2"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->kt:I

    const-string v2, "nd3_version_intro_normal"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->ku:I

    const-string v2, "nd3_version_intro_normal_2"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->kv:I

    const-string v2, "nd3_version_update_download_percent"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->kw:I

    const-string v2, "nd3_version_update_loaded"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->kx:I

    const-string v2, "nd3_version_update_loading"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->ky:I

    const-string v2, "nd3_view_resources"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->kz:I

    const-string v2, "nd3_wait_check"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->kA:I

    const-string v2, "nd3_who_play_title"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->kB:I

    const-string v2, "nd3_year"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->kC:I

    const-string v2, "nd3_yes"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->kD:I

    const-string v2, "nd_account_bind_tips"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->kE:I

    const-string v2, "nd_account_manage_title"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->kF:I

    const-string v2, "nd_balance_pre"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->kG:I

    const-string v2, "nd_bankunion_request"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->kH:I

    const-string v2, "nd_bankunion_request_fail"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->kI:I

    const-string v2, "nd_bind_phone_account_tips"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->kJ:I

    const-string v2, "nd_bind_phone_desc_title"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->kK:I

    const-string v2, "nd_bind_phone_failure"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->kL:I

    const-string v2, "nd_bind_phone_lottery"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->kM:I

    const-string v2, "nd_bind_phone_number_bind"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->kN:I

    const-string v2, "nd_bind_phone_number_enter_code_tip"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->kO:I

    const-string v2, "nd_bind_phone_number_enter_number_tip"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->kP:I

    const-string v2, "nd_bind_phone_number_error_empty_code"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->kQ:I

    const-string v2, "nd_bind_phone_number_error_empty_number"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->kR:I

    const-string v2, "nd_bind_phone_number_error_invalid_number"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->kS:I

    const-string v2, "nd_bind_phone_number_gain_code"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->kT:I

    const-string v2, "nd_bind_phone_number_join"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->kU:I

    const-string v2, "nd_bind_phone_number_leave"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->kV:I

    const-string v2, "nd_bind_phone_number_success"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->kW:I

    const-string v2, "nd_bind_phone_number_wait_format"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->kX:I

    const-string v2, "nd_bind_phone_reason"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->kY:I

    const-string v2, "nd_bind_phone_reason1"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->kZ:I

    const-string v2, "nd_bind_phone_reason2"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->la:I

    const-string v2, "nd_bind_phone_result_confirm"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->lb:I

    const-string v2, "nd_bind_phone_result_format_2"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->lc:I

    const-string v2, "nd_bind_phone_result_success_format"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->ld:I

    const-string v2, "nd_bind_phone_result_tips"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->le:I

    const-string v2, "nd_bind_phone_result_tips1"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->lf:I

    const-string v2, "nd_bind_phone_result_tips2"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->lg:I

    const-string v2, "nd_bind_phone_result_tips3"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->lh:I

    const-string v2, "nd_bind_phone_title"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->li:I

    const-string v2, "nd_bind_phone_unactivity_desc"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->lj:I

    const-string v2, "nd_bind_phone_unactivity_tip"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->lk:I

    const-string v2, "nd_btn_back"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->ll:I

    const-string v2, "nd_btn_complete"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->lm:I

    const-string v2, "nd_btn_delete"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->ln:I

    const-string v2, "nd_btn_edit"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->lo:I

    const-string v2, "nd_btn_login"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->lp:I

    const-string v2, "nd_checkupdate"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->lq:I

    const-string v2, "nd_clear"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->lr:I

    const-string v2, "nd_curren_version"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->ls:I

    const-string v2, "nd_debug_model"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->lt:I

    const-string v2, "nd_exit_program"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->lu:I

    const-string v2, "nd_find_password_confirm"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->lv:I

    const-string v2, "nd_find_password_enter_account_tip"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->lw:I

    const-string v2, "nd_find_password_enter_code_tip"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->lx:I

    const-string v2, "nd_find_password_enter_number_tip"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->ly:I

    const-string v2, "nd_find_password_error_empty_account"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->lz:I

    const-string v2, "nd_find_password_error_empty_code"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->lA:I

    const-string v2, "nd_find_password_error_empty_number"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->lB:I

    const-string v2, "nd_find_password_error_invalid_code"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->lC:I

    const-string v2, "nd_find_password_error_invalid_number"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->lD:I

    const-string v2, "nd_find_password_error_not_match"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->lE:I

    const-string v2, "nd_find_password_error_timeout_code"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->lF:I

    const-string v2, "nd_find_password_gain_code"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->lG:I

    const-string v2, "nd_find_password_later"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->lH:I

    const-string v2, "nd_find_password_no_bind_tips"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->lI:I

    const-string v2, "nd_find_password_reset_success"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->lJ:I

    const-string v2, "nd_find_password_tips"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->lK:I

    const-string v2, "nd_find_password_title"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->lL:I

    const-string v2, "nd_find_password_wait_format"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->lM:I

    const-string v2, "nd_goods_buy_count_invalid"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->lN:I

    const-string v2, "nd_goods_buy_now"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->lO:I

    const-string v2, "nd_goods_count_limit_fmt"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->lP:I

    const-string v2, "nd_goods_count_limit_min_fmt"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->lQ:I

    const-string v2, "nd_goods_desc_buy_limit_fmt"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->lR:I

    const-string v2, "nd_goods_desc_panel_title"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->lS:I

    const-string v2, "nd_goods_desc_panel_title1"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->lT:I

    const-string v2, "nd_goods_desc_panel_title2"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->lU:I

    const-string v2, "nd_goods_desc_panel_title3"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->lV:I

    const-string v2, "nd_goods_desc_panel_title4"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->lW:I

    const-string v2, "nd_goods_desc_panel_title5"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->lX:I

    const-string v2, "nd_goods_desc_use_limit_fmt"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->lY:I

    const-string v2, "nd_goods_desc_use_no_limit"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->lZ:I

    const-string v2, "nd_goods_desc_valid_limit_fmt"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->ma:I

    const-string v2, "nd_goods_list_title"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->mb:I

    const-string v2, "nd_goods_no_record"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->mc:I

    const-string v2, "nd_goods_price_fmt"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->md:I

    const-string v2, "nd_goods_price_invalid"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->me:I

    const-string v2, "nd_goods_price_org"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->mf:I

    const-string v2, "nd_goods_price_sale"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->mg:I

    const-string v2, "nd_guest_official_tips"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->mh:I

    const-string v2, "nd_guest_official_tips0"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->mi:I

    const-string v2, "nd_guest_official_tips1"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->mj:I

    const-string v2, "nd_guest_regist"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->mk:I

    const-string v2, "nd_guest_regist_tips"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->ml:I

    const-string v2, "nd_has_account"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->mm:I

    const-string v2, "nd_is_new_desc"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->mn:I

    const-string v2, "nd_laster_version"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->mo:I

    const-string v2, "nd_leaderboard_all_player"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->mp:I

    const-string v2, "nd_leaderboard_friend_player"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->mq:I

    const-string v2, "nd_leaderboard_other"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->mr:I

    const-string v2, "nd_leaderboard_scope_time_all"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->ms:I

    const-string v2, "nd_leaderboard_scope_time_today"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->mt:I

    const-string v2, "nd_leaderboard_scope_time_week"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->mu:I

    const-string v2, "nd_leaderboard_self"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->mv:I

    const-string v2, "nd_leaderboard_self_fmt"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->mw:I

    const-string v2, "nd_leaderboard_self_fmt1"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->mx:I

    const-string v2, "nd_leaderboard_self_fmt2"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->my:I

    const-string v2, "nd_leaderboard_you"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->mz:I

    const-string v2, "nd_more_permission_friend"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->mA:I

    const-string v2, "nd_more_permission_pay_pwd"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->mB:I

    const-string v2, "nd_more_permission_pay_pwd_content"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->mC:I

    const-string v2, "nd_more_permission_pay_pwd_tip"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->mD:I

    const-string v2, "nd_more_permission_verify_password"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->mE:I

    const-string v2, "nd_more_permission_verify_password_empty"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->mF:I

    const-string v2, "nd_more_permission_verify_password_error"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->mG:I

    const-string v2, "nd_newapp_desc"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->mH:I

    const-string v2, "nd_pay_success_tips"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->mI:I

    const-string v2, "nd_sdk_error_can_not_unbind"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->mJ:I

    const-string v2, "nd_sdk_error_contloginbyguest"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->mK:I

    const-string v2, "nd_sdk_error_fee_type_invalid"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->mL:I

    const-string v2, "nd_sdk_error_goods_id_valid"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->mM:I

    const-string v2, "nd_sdk_error_has_bind"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->mN:I

    const-string v2, "nd_sdk_error_info_unexists"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->mO:I

    const-string v2, "nd_sdk_error_lotteryed"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->mP:I

    const-string v2, "nd_sdk_error_mPhoto_too_large"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->mQ:I

    const-string v2, "nd_sdk_error_not_match_account"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->mR:I

    const-string v2, "nd_sdk_error_not_verified"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->mS:I

    const-string v2, "nd_sdk_error_phoneno_before"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->mT:I

    const-string v2, "nd_sdk_error_phoneno_inconstistent"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->mU:I

    const-string v2, "nd_sdk_error_phoneno_invalid"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->mV:I

    const-string v2, "nd_sdk_error_product_cate_invalid"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->mW:I

    const-string v2, "nd_sdk_error_rebind"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->mX:I

    const-string v2, "nd_sdk_error_resend"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->mY:I

    const-string v2, "nd_sdk_error_sdk_valid"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->mZ:I

    const-string v2, "nd_sdk_error_send_too_more"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->na:I

    const-string v2, "nd_sdk_error_smscode_error"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->nb:I

    const-string v2, "nd_sdk_error_smscode_expired"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->nc:I

    const-string v2, "nd_sdk_error_time_out"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->nd:I

    const-string v2, "nd_sdk_error_uin_token_unvalid"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->ne:I

    const-string v2, "nd_sdk_error_uin_unvalid"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->nf:I

    const-string v2, "nd_sdk_error_uin_unvalid_account"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->ng:I

    const-string v2, "nd_sdk_error_un_condition"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->nh:I

    const-string v2, "nd_sdk_error_unbind_phone"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->ni:I

    const-string v2, "nd_sdk_error_unneet_official"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->nj:I

    const-string v2, "nd_sdk_error_use_valid"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->nk:I

    const-string v2, "nd_sdk_error_vip_cant_find"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->nl:I

    const-string v2, "nd_service_phone"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->nm:I

    const-string v2, "nd_set_password_password"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->nn:I

    const-string v2, "nd_set_password_password_again"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->no:I

    const-string v2, "nd_set_password_password_hint"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->np:I

    const-string v2, "nd_set_password_submit"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->nq:I

    const-string v2, "nd_set_password_title"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->nr:I

    const-string v2, "nd_share_concernedmicblog"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->ns:I

    const-string v2, "nd_share_concernedmicblog_success"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->nt:I

    const-string v2, "nd_share_concernedmicblog_tips"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->nu:I

    const-string v2, "nd_sms_had_send_tip"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->nv:I

    const-string v2, "nd_switch_account"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->nw:I

    const-string v2, "nd_unbind_phone_number_bind"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->nx:I

    const-string v2, "nd_unbind_phone_number_enter_number_tip"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->ny:I

    const-string v2, "nd_unbind_phone_number_error_empty_code"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->nz:I

    const-string v2, "nd_unbind_phone_number_error_empty_number"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->nA:I

    const-string v2, "nd_unbind_phone_number_error_invalid_number"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->nB:I

    const-string v2, "nd_unbind_phone_number_title"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->nC:I

    const-string v2, "nd_unbind_phone_number_wait_format"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->nD:I

    const-string v2, "nd_unbind_phone_result_success_format"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->nE:I

    const-string v2, "nd_unbind_phone_tips"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->nF:I

    const-string v2, "nd_update"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->nG:I

    const-string v2, "nd_update_debug_model"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->nH:I

    const-string v2, "nd_version_size"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->nI:I

    const-string v2, "nd_version_update_tips"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nd/commplatform/d/c/jo$h;->nJ:I

    const-string v2, "nd_res"

    const-string v3, "raw"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/nd/commplatform/d/c/jo$g;->a:I

    goto/16 :goto_0
.end method
