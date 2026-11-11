.class public Lcom/nd/commplatform/d/c/nt;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcom/nd/commplatform/d/c/of;->a()Lcom/nd/commplatform/d/c/of;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/of;->d()Lcom/nd/commplatform/entry/NdUserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/nd/commplatform/d/c/nt;->c(Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/nd/commplatform/d/c/nt$1;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/nt$1;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/nd/commplatform/d/c/of;->a()Lcom/nd/commplatform/d/c/of;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lcom/nd/commplatform/d/c/of;->a(Lcom/nd/commplatform/NdCallbackListener;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 2

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static a(Lcom/nd/commplatform/NdCallbackListener;Landroid/content/Context;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<*>;",
            "Landroid/content/Context;",
            "I)V"
        }
    .end annotation

    const/4 v1, -0x1

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/nd/commplatform/NdCallbackListener;->getResult()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/nd/commplatform/NdCallbackListener;->getResult()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/nd/commplatform/d/c/nt;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sparse-switch p2, :sswitch_data_0

    move v0, v1

    :goto_1
    if-ne v1, v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->iC:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    :sswitch_0
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->jn:I

    goto :goto_1

    :sswitch_1
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->ir:I

    goto :goto_1

    :sswitch_2
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->iH:I

    goto :goto_1

    :sswitch_3
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->jd:I

    goto :goto_1

    :sswitch_4
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->iJ:I

    goto :goto_1

    :sswitch_5
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->hR:I

    goto :goto_1

    :sswitch_6
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->iq:I

    goto :goto_1

    :sswitch_7
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->hG:I

    goto :goto_1

    :sswitch_8
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->ix:I

    goto :goto_1

    :sswitch_9
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->jc:I

    goto :goto_1

    :sswitch_a
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->ia:I

    goto :goto_1

    :sswitch_b
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->hP:I

    goto :goto_1

    :sswitch_c
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->hI:I

    goto :goto_1

    :sswitch_d
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->hC:I

    goto :goto_1

    :sswitch_e
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->hy:I

    goto :goto_1

    :sswitch_f
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->iL:I

    goto :goto_1

    :sswitch_10
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->il:I

    goto :goto_1

    :sswitch_11
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->hz:I

    goto :goto_1

    :sswitch_12
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->hA:I

    goto :goto_1

    :sswitch_13
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->ji:I

    goto :goto_1

    :sswitch_14
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->ja:I

    goto :goto_1

    :sswitch_15
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->hx:I

    goto :goto_1

    :sswitch_16
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->jq:I

    goto :goto_1

    :sswitch_17
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->ie:I

    goto :goto_1

    :sswitch_18
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->iK:I

    goto :goto_1

    :sswitch_19
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->it:I

    goto :goto_1

    :sswitch_1a
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->is:I

    goto :goto_1

    :sswitch_1b
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->iF:I

    goto :goto_1

    :sswitch_1c
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->iE:I

    goto :goto_1

    :sswitch_1d
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->ib:I

    goto :goto_1

    :sswitch_1e
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->iS:I

    goto :goto_1

    :sswitch_1f
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->iT:I

    goto :goto_1

    :sswitch_20
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->iU:I

    goto :goto_1

    :sswitch_21
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->jj:I

    goto :goto_1

    :sswitch_22
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->hX:I

    goto/16 :goto_1

    :sswitch_23
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->hW:I

    goto/16 :goto_1

    :sswitch_24
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->iR:I

    goto/16 :goto_1

    :sswitch_25
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->ig:I

    goto/16 :goto_1

    :sswitch_26
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->if:I

    goto/16 :goto_1

    :sswitch_27
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->iV:I

    goto/16 :goto_1

    :sswitch_28
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->iv:I

    goto/16 :goto_1

    :sswitch_29
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->hH:I

    goto/16 :goto_1

    :sswitch_2a
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->ic:I

    goto/16 :goto_1

    :sswitch_2b
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->iu:I

    goto/16 :goto_1

    :sswitch_2c
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->id:I

    goto/16 :goto_1

    :sswitch_2d
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->iO:I

    goto/16 :goto_1

    :sswitch_2e
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->iM:I

    goto/16 :goto_1

    :sswitch_2f
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->iP:I

    goto/16 :goto_1

    :sswitch_30
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->iQ:I

    goto/16 :goto_1

    :sswitch_31
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->hK:I

    goto/16 :goto_1

    :sswitch_32
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->iG:I

    goto/16 :goto_1

    :sswitch_33
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->iI:I

    goto/16 :goto_1

    :sswitch_34
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->iZ:I

    goto/16 :goto_1

    :sswitch_35
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->je:I

    goto/16 :goto_1

    :sswitch_36
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->iw:I

    goto/16 :goto_1

    :sswitch_37
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->iW:I

    goto/16 :goto_1

    :sswitch_38
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->iX:I

    goto/16 :goto_1

    :sswitch_39
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->iY:I

    goto/16 :goto_1

    :sswitch_3a
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->jp:I

    goto/16 :goto_1

    :sswitch_3b
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->hZ:I

    goto/16 :goto_1

    :sswitch_3c
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->hE:I

    goto/16 :goto_1

    :sswitch_3d
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->iD:I

    goto/16 :goto_1

    :sswitch_3e
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->hJ:I

    goto/16 :goto_1

    :sswitch_3f
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->hF:I

    goto/16 :goto_1

    :sswitch_40
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->hD:I

    goto/16 :goto_1

    :sswitch_41
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->ip:I

    goto/16 :goto_1

    :sswitch_42
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->hT:I

    goto/16 :goto_1

    :sswitch_43
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->iB:I

    goto/16 :goto_1

    :sswitch_44
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->hO:I

    goto/16 :goto_1

    :sswitch_45
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->hS:I

    goto/16 :goto_1

    :sswitch_46
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->ih:I

    goto/16 :goto_1

    :sswitch_47
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->ii:I

    goto/16 :goto_1

    :sswitch_48
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->hU:I

    goto/16 :goto_1

    :sswitch_49
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->hV:I

    goto/16 :goto_1

    :sswitch_4a
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->hY:I

    goto/16 :goto_1

    :sswitch_4b
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->jh:I

    goto/16 :goto_1

    :sswitch_4c
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->io:I

    goto/16 :goto_1

    :sswitch_4d
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->in:I

    goto/16 :goto_1

    :sswitch_4e
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->iN:I

    goto/16 :goto_1

    :sswitch_4f
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->hQ:I

    goto/16 :goto_1

    :sswitch_50
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->ik:I

    goto/16 :goto_1

    :sswitch_51
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->ij:I

    goto/16 :goto_1

    :sswitch_52
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->jo:I

    goto/16 :goto_1

    :sswitch_53
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->hB:I

    goto/16 :goto_1

    :sswitch_54
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->jl:I

    goto/16 :goto_1

    :sswitch_55
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->jb:I

    goto/16 :goto_1

    :sswitch_56
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->jm:I

    goto/16 :goto_1

    :sswitch_57
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->jf:I

    goto/16 :goto_1

    :sswitch_58
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->iy:I

    goto/16 :goto_1

    :sswitch_59
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->iz:I

    goto/16 :goto_1

    :sswitch_5a
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->hN:I

    goto/16 :goto_1

    :sswitch_5b
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->hM:I

    goto/16 :goto_1

    :sswitch_5c
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->hL:I

    goto/16 :goto_1

    :sswitch_5d
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->im:I

    goto/16 :goto_1

    :sswitch_5e
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->jk:I

    goto/16 :goto_1

    :sswitch_5f
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->jg:I

    goto/16 :goto_1

    :sswitch_60
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->mW:I

    goto/16 :goto_1

    :sswitch_61
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->mL:I

    goto/16 :goto_1

    :sswitch_62
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->mO:I

    goto/16 :goto_1

    :sswitch_63
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->mJ:I

    goto/16 :goto_1

    :sswitch_64
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->mR:I

    goto/16 :goto_1

    :sswitch_65
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->mY:I

    goto/16 :goto_1

    :sswitch_66
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->nd:I

    goto/16 :goto_1

    :sswitch_67
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->nk:I

    goto/16 :goto_1

    :sswitch_68
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->mM:I

    goto/16 :goto_1

    :sswitch_69
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->mZ:I

    goto/16 :goto_1

    :sswitch_6a
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->mV:I

    goto/16 :goto_1

    :sswitch_6b
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->mX:I

    goto/16 :goto_1

    :sswitch_6c
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->mN:I

    goto/16 :goto_1

    :sswitch_6d
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->mU:I

    goto/16 :goto_1

    :sswitch_6e
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->nb:I

    goto/16 :goto_1

    :sswitch_6f
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->nc:I

    goto/16 :goto_1

    :sswitch_70
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->ni:I

    goto/16 :goto_1

    :sswitch_71
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->mS:I

    goto/16 :goto_1

    :sswitch_72
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->nh:I

    goto/16 :goto_1

    :sswitch_73
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->mP:I

    goto/16 :goto_1

    :sswitch_74
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->na:I

    goto/16 :goto_1

    :sswitch_75
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->nl:I

    goto/16 :goto_1

    :sswitch_76
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->mT:I

    goto/16 :goto_1

    :sswitch_77
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->mK:I

    goto/16 :goto_1

    :sswitch_78
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->nj:I

    goto/16 :goto_1

    :sswitch_79
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->nf:I

    goto/16 :goto_1

    :sswitch_7a
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->ng:I

    goto/16 :goto_1

    :sswitch_7b
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->ne:I

    goto/16 :goto_1

    :cond_2
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/nd/commplatform/d/c/nt;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x6593 -> :sswitch_79
        -0x6592 -> :sswitch_78
        -0x6591 -> :sswitch_77
        -0x61b5 -> :sswitch_76
        -0x61b4 -> :sswitch_75
        -0x61b3 -> :sswitch_74
        -0x61b2 -> :sswitch_73
        -0x61b1 -> :sswitch_72
        -0x61b0 -> :sswitch_71
        -0x61af -> :sswitch_6f
        -0x61ae -> :sswitch_6e
        -0x61ad -> :sswitch_6d
        -0x61ac -> :sswitch_70
        -0x61ab -> :sswitch_6c
        -0x61aa -> :sswitch_6b
        -0x61a9 -> :sswitch_6a
        -0x59dc -> :sswitch_68
        -0x59db -> :sswitch_67
        -0x59da -> :sswitch_66
        -0x59d9 -> :sswitch_65
        -0x55f3 -> :sswitch_64
        -0x55f2 -> :sswitch_63
        -0x55f1 -> :sswitch_62
        -0x520a -> :sswitch_61
        -0x5209 -> :sswitch_60
        -0x4a66 -> :sswitch_5f
        -0x4a65 -> :sswitch_5e
        -0x4a64 -> :sswitch_5d
        -0x4a63 -> :sswitch_5c
        -0x4a62 -> :sswitch_5b
        -0x4a61 -> :sswitch_5a
        -0x4a60 -> :sswitch_59
        -0x4a5a -> :sswitch_58
        -0x4a59 -> :sswitch_57
        -0x4a58 -> :sswitch_56
        -0x4a57 -> :sswitch_55
        -0x4a56 -> :sswitch_54
        -0x4a3c -> :sswitch_53
        -0x4a3b -> :sswitch_52
        -0x4a3a -> :sswitch_51
        -0x4a39 -> :sswitch_50
        -0x4654 -> :sswitch_4f
        -0x4653 -> :sswitch_4e
        -0x4652 -> :sswitch_4d
        -0x4651 -> :sswitch_4c
        -0x426a -> :sswitch_4b
        -0x4269 -> :sswitch_4a
        -0x3e85 -> :sswitch_49
        -0x3e84 -> :sswitch_48
        -0x3e83 -> :sswitch_47
        -0x3e82 -> :sswitch_46
        -0x3e81 -> :sswitch_45
        -0x3a9b -> :sswitch_44
        -0x3a9a -> :sswitch_43
        -0x3a99 -> :sswitch_42
        -0x36b1 -> :sswitch_41
        -0x32ca -> :sswitch_40
        -0x32c9 -> :sswitch_3f
        -0x2afc -> :sswitch_3e
        -0x2afb -> :sswitch_3d
        -0x2afa -> :sswitch_3c
        -0x271c -> :sswitch_3b
        -0x271b -> :sswitch_3a
        -0x1b5b -> :sswitch_39
        -0x1b5a -> :sswitch_38
        -0x1b59 -> :sswitch_37
        -0x1773 -> :sswitch_36
        -0x1772 -> :sswitch_35
        -0x1771 -> :sswitch_34
        -0x1389 -> :sswitch_33
        -0xfa3 -> :sswitch_32
        -0xfa2 -> :sswitch_31
        -0xfa1 -> :sswitch_30
        -0xbbb -> :sswitch_2f
        -0xbba -> :sswitch_2e
        -0xbb9 -> :sswitch_2d
        -0x7d4 -> :sswitch_2c
        -0x7d3 -> :sswitch_2b
        -0x7d2 -> :sswitch_2a
        -0x7d1 -> :sswitch_29
        -0x3ea -> :sswitch_28
        -0x3e9 -> :sswitch_27
        -0x322 -> :sswitch_26
        -0x321 -> :sswitch_25
        -0x2bd -> :sswitch_24
        -0x25a -> :sswitch_23
        -0x259 -> :sswitch_22
        -0x1f5 -> :sswitch_21
        -0x194 -> :sswitch_20
        -0x193 -> :sswitch_1f
        -0x192 -> :sswitch_1e
        -0x191 -> :sswitch_1d
        -0x12f -> :sswitch_1c
        -0x12e -> :sswitch_1b
        -0x12d -> :sswitch_1a
        -0xc9 -> :sswitch_19
        -0x72 -> :sswitch_7b
        -0x71 -> :sswitch_7a
        -0x6e -> :sswitch_17
        -0x6d -> :sswitch_18
        -0x6c -> :sswitch_16
        -0x6b -> :sswitch_15
        -0x6a -> :sswitch_14
        -0x69 -> :sswitch_13
        -0x68 -> :sswitch_12
        -0x67 -> :sswitch_11
        -0x66 -> :sswitch_10
        -0x65 -> :sswitch_f
        -0x64 -> :sswitch_e
        -0xf -> :sswitch_d
        -0xe -> :sswitch_69
        -0xd -> :sswitch_c
        -0xc -> :sswitch_b
        -0xb -> :sswitch_a
        -0xa -> :sswitch_9
        -0x9 -> :sswitch_8
        -0x8 -> :sswitch_7
        -0x7 -> :sswitch_6
        -0x6 -> :sswitch_5
        -0x5 -> :sswitch_4
        -0x4 -> :sswitch_3
        -0x3 -> :sswitch_2
        -0x2 -> :sswitch_1
        -0x1 -> :sswitch_0
    .end sparse-switch
.end method

.method static synthetic b(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/nd/commplatform/d/c/nt;->c(Landroid/content/Context;)V

    return-void
.end method

.method private static c(Landroid/content/Context;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-static {}, Lcom/nd/commplatform/d/c/of;->a()Lcom/nd/commplatform/d/c/of;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/of;->d()Lcom/nd/commplatform/entry/NdUserInfo;

    move-result-object v1

    const-string v0, ""

    invoke-virtual {v1}, Lcom/nd/commplatform/entry/NdUserInfo;->getNickName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/nd/commplatform/entry/NdUserInfo;->getNickName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v1}, Lcom/nd/commplatform/entry/NdUserInfo;->getNickName()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_0
    new-instance v2, Landroid/widget/Toast;

    invoke-direct {v2, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v3, Lcom/nd/commplatform/d/c/jo$f;->L:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->bj:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    sget v4, Lcom/nd/commplatform/d/c/jo$h;->bs:I

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v1, v5, v6

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v3}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    invoke-virtual {v2, v7}, Landroid/widget/Toast;->setDuration(I)V

    const/16 v0, 0x31

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/nd/commplatform/d/c/jo$c;->l:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v2, v0, v6, v1}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method
