import "bootstrap";
import "../components/analytics";

import { rotationBtn } from "../components/rotationBtn";
rotationBtn();

import { insertImage } from "../components/downloadImage";
insertImage();

import { rotationImage } from "../components/rotationImage";
rotationImage();

import { revealModal } from "../components/modal";
revealModal();

import { getWidth, sameHeight } from "../components/egalWidth";
getWidth();
sameHeight();

import { unrightClcik } from "../components/rightClick";
unrightClcik();

import { getClicked } from "../components/getClicked";
getClicked();

import { copyUrl } from "../components/copyUrl";
copyUrl();

import { sortCard } from "../components/pictures.js";
sortCard();

import { clickOnSubmit } from "../components/checkVisiblePicture.js";
clickOnSubmit();

import { sideBar, openShareLinks } from "../components/sideBar.js";
sideBar();
openShareLinks();
